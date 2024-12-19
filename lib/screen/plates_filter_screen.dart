import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../constants.dart';
import '../initialize.dart';
import '../provider/providers.dart';
import '../provider/settings_providers.dart';

class PlatesFilterScreen extends StatefulHookConsumerWidget {
  const PlatesFilterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PlatesFilterScreenState();
}

class _PlatesFilterScreenState extends ConsumerState<PlatesFilterScreen> {
  final _formFieldKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    ref.listenManual(updatePriceUnderProvider, (previous, next) {
      ref.read(displaySnackBarProvider.notifier).display('${AppLocalizations.of(context)!.saved} ${commaFormat.format(next).replaceAll('.0', '')}');
    });
  }

  @override
  Widget build(BuildContext context) {
    final int updatePriceUnder = ref.watch(updatePriceUnderProvider);
    final SortBy updateSortBy = ref.watch(updateSortByProvider);
    final SelectView updateView = ref.watch(updateViewProvider);
    final bool virtualPlatesOnly = ref.watch(virtualPlatesOnlyProvider);
    final Set<String> filterPlatesType = ref.watch(filterPlatesTypeProvider);
    final Set<String> filterProvince = ref.watch(filterProvinceProvider);
    final controller = useTextEditingController(text: updatePriceUnder.toString());
    final pendingFetch = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingFetch.value);
    final double width = MediaQuery.of(context).size.width;
    final TextStyle? textStyle = (width < breakPoint && Localizations.localeOf(context) == en) ? Theme.of(context).textTheme.labelSmall : null;
    final BoxConstraints? boxConstraints = width > breakPoint ? const BoxConstraints(maxWidth: 336.0) : null;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.close_outlined),
        ),
        title: Text(AppLocalizations.of(context)!.filter),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.price_under,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 4.0),
              TextFormField(
                key: _formFieldKey,
                maxLength: 9,
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  helperText: AppLocalizations.of(context)!.pmb,
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton.icon(
                        onPressed: (snapshot.connectionState == ConnectionState.waiting)
                            ? null
                            : () {
                                pendingFetch.value = ref.read(updatePriceUnderProvider.notifier).setNewPrice(100000000);
                                controller.text = 100000000.toString();
                                FocusManager.instance.primaryFocus?.unfocus();
                                setState(() {});
                              },
                        label: Text(AppLocalizations.of(context)!.max),
                        icon: const Icon(Icons.all_inclusive_outlined),
                      ),
                      const SizedBox(width: 24.0),
                      FilledButton.tonalIcon(
                        onPressed: (snapshot.connectionState == ConnectionState.waiting)
                            ? null
                            : () {
                                if (_formFieldKey.currentState!.validate()) {
                                  final int price = int.parse(controller.text.trim().replaceAll(regInt, ''));
                                  pendingFetch.value = ref.read(updatePriceUnderProvider.notifier).setNewPrice(price);
                                  controller.text = price.toString();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  setState(() {});
                                }
                              },
                        label: Text(AppLocalizations.of(context)!.save),
                        icon: const Icon(Icons.done_outlined),
                      ),
                    ],
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context)!.please_specify;
                  } else if (int.parse(value.trim().replaceAll(regInt, '')) < 1000 || int.parse(value.trim().replaceAll(regInt, '')) > 100000000) {
                    return AppLocalizations.of(context)!.pepc;
                  } else {
                    return null;
                  }
                },
                onChanged: (value) => setState(() {}),
                onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
              ),
              const SizedBox(height: 48.0),
              Text(
                AppLocalizations.of(context)!.sort_by,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 4.0),
              SegmentedButton<SortBy>(
                  segments: [
                    ButtonSegment<SortBy>(
                      value: SortBy.priceLowToHigh,
                      label: FittedBox(
                        child: Text(
                          AppLocalizations.of(context)!.price_low_high,
                          style: textStyle,
                        ),
                      ),
                      icon: const RotatedBox(quarterTurns: 2, child: Icon(Icons.filter_list_outlined)),
                    ),
                    ButtonSegment<SortBy>(
                      value: SortBy.priceHighToLow,
                      label: FittedBox(
                        child: Text(
                          AppLocalizations.of(context)!.price_high_low,
                          style: textStyle,
                        ),
                      ),
                      icon: const Icon(Icons.filter_list_outlined),
                    ),
                    ButtonSegment<SortBy>(
                      value: SortBy.reacts,
                      label: FittedBox(
                        child: Text(
                          AppLocalizations.of(context)!.reacts,
                          style: textStyle,
                        ),
                      ),
                      icon: const Icon(Icons.thumb_up_outlined),
                    ),
                  ],
                  selected: <SortBy>{
                    updateSortBy
                  },
                  onSelectionChanged: (Set<SortBy> newSelection) {
                    ref.read(updateSortByProvider.notifier).update(newSelection.first);
                  }),
              const SizedBox(height: 48.0),
              Text(
                AppLocalizations.of(context)!.select_view,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 4.0),
              SegmentedButton<SelectView>(
                  segments: [
                    ButtonSegment<SelectView>(value: SelectView.card, label: Text(AppLocalizations.of(context)!.card), icon: const Icon(Icons.rectangle_outlined)),
                    ButtonSegment<SelectView>(value: SelectView.list, label: Text(AppLocalizations.of(context)!.list), icon: const Icon(Icons.view_list_outlined)),
                  ],
                  selected: <SelectView>{
                    updateView
                  },
                  onSelectionChanged: (Set<SelectView> newSelection) {
                    ref.read(updateViewProvider.notifier).update(newSelection.first);
                  }),
              const SizedBox(height: 48.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppLocalizations.of(context)!.svpo,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                  ),
                  width < breakPoint ? const Spacer() : const SizedBox(width: 32.0),
                  Switch(
                    value: virtualPlatesOnly,
                    onChanged: (bool newValue) => ref.read(virtualPlatesOnlyProvider.notifier).update(newValue),
                  ),
                ],
              ),
              const SizedBox(height: 48.0),
              Text(
                AppLocalizations.of(context)!.select_plates_type,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 4.0),
              Wrap(
                children: PlatesType.values.map((PlatesType platesType) {
                  return Card.outlined(
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 480),
                      child: CheckboxListTile(
                        title: Text(
                          platesType.nickname,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        subtitle: Text(
                          platesType.vehicleType.type,
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.outline),
                        ),
                        secondary: Image(image: AssetImage(platesType.asset_uri)),
                        isThreeLine: true,
                        value: filterPlatesType.contains(platesType.name),
                        onChanged: (bool? value) {
                          if (value != null) {
                            if (value) {
                              ref.read(filterPlatesTypeProvider.notifier).add(platesType);
                            } else {
                              ref.read(filterPlatesTypeProvider.notifier).delete(platesType);
                            }
                          }
                        },
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 48.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppLocalizations.of(context)!.select_province,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                  ),
                  const Spacer(),
                  TextButton.icon(
                    onPressed: (snapshot.connectionState == ConnectionState.waiting)
                        ? null
                        : () {
                            pendingFetch.value = ref.read(filterProvinceProvider.notifier).selectUnSelectAll();
                          },
                    label: Text(AppLocalizations.of(context)!.select_unselect_all),
                    icon: const Icon(Icons.done_all_outlined),
                  ),
                ],
              ),
              const SizedBox(height: 4.0),
              Wrap(
                children: Province.values.map((Province province) {
                  return Card.outlined(
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      constraints: boxConstraints,
                      child: CheckboxListTile(
                        value: filterProvince.contains(province.name),
                        title: Text(
                          '${province.name_th}  ${province.name_en}',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        onChanged: (bool? value) {
                          if (value != null) {
                            if (value) {
                              ref.read(filterProvinceProvider.notifier).add(province);
                            } else {
                              ref.read(filterProvinceProvider.notifier).delete(province);
                            }
                          }
                        },
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
