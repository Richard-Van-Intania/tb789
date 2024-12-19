import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../constants.dart';
import '../provider/add_plates_providers.dart';

class SelectProvinceScreen extends HookConsumerWidget {
  const SelectProvinceScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Province? selectProvince = ref.watch(selectProvinceProvider);
    final PlatesType selectPlatesType = ref.watch(selectPlatesTypeProvider);
    final TextEditingController controller = useTextEditingController();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.add_plates)),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.select_province,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            const SizedBox(height: 4.0),
            DropdownMenu<Province>(
              width: size.width - 32.0,
              controller: controller,
              menuHeight: size.height * 0.3,
              enableFilter: true,
              requestFocusOnTap: true,
              leadingIcon: const Icon(Icons.search_outlined),
              label: Text(AppLocalizations.of(context)!.province),
              expandedInsets: const EdgeInsets.symmetric(horizontal: 0.0),
              trailingIcon: IconButton(
                onPressed: () => controller.clear(),
                icon: const Icon(Icons.cancel_outlined),
              ),
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Theme.of(context).colorScheme.onInverseSurface,
                contentPadding: const EdgeInsets.symmetric(vertical: 24.0),
              ),
              onSelected: (Province? province) {
                FocusManager.instance.primaryFocus?.unfocus();
                ref.read(selectProvinceProvider.notifier).select(province);
              },
              dropdownMenuEntries: Province.values.map<DropdownMenuEntry<Province>>(
                (Province province) {
                  return DropdownMenuEntry<Province>(value: province, label: '${province.name_th} ${province.name_en}');
                },
              ).toList(),
              // temp fix
              searchCallback: (entries, query) {
                final String searchText = controller.text.toLowerCase();
                if (searchText.isEmpty) {
                  return null;
                }
                final int index = entries.indexWhere((DropdownMenuEntry<Province> entry) => entry.label.toLowerCase().contains(searchText));
                return index != -1 ? index : null;
              },
            ),
            const SizedBox(height: 48.0),
            Text(
              AppLocalizations.of(context)!.select_plates_type,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            const SizedBox(height: 4.0),
            ...PlatesType.values.map(
              (PlatesType platesType) {
                if (selectProvince == Province.province1) {
                  return Card.outlined(
                    clipBehavior: Clip.hardEdge,
                    child: RadioListTile<PlatesType>(
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
                      value: platesType,
                      groupValue: selectPlatesType,
                      onChanged: (PlatesType? platesType) {
                        if (platesType != null) {
                          ref.read(selectPlatesTypeProvider.notifier).select(platesType);
                        }
                      },
                    ),
                  );
                } else {
                  if (platesType == PlatesType.platesType5 || platesType == PlatesType.platesType6) {
                    return Card.outlined(
                      clipBehavior: Clip.hardEdge,
                      child: RadioListTile<PlatesType>(
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
                        value: platesType,
                        groupValue: selectPlatesType,
                        onChanged: null,
                      ),
                    );
                  } else {
                    return Card.outlined(
                      clipBehavior: Clip.hardEdge,
                      child: RadioListTile<PlatesType>(
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
                        value: platesType,
                        groupValue: selectPlatesType,
                        onChanged: (PlatesType? platesType) {
                          if (platesType != null) {
                            ref.read(selectPlatesTypeProvider.notifier).select(platesType);
                          }
                        },
                      ),
                    );
                  }
                }
              },
            ),
            const SizedBox(height: 32.0),
            FilledButton.tonal(
              onPressed: (selectProvince == null || (selectProvince != Province.province1 && (selectPlatesType == PlatesType.platesType5 || selectPlatesType == PlatesType.platesType6)))
                  ? null
                  : () {
                      context.go('/your_store_drawer/select_province_screen/fill_plates_details_screen');
                    },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(AppLocalizations.of(context)!.next)],
              ),
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      )),
    );
  }
}
