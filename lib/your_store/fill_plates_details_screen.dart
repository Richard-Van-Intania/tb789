import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import '../constants.dart';
import '../initialize.dart';
import '../model/models.dart';
import '../provider/add_plates_providers.dart';
import '../provider/providers.dart';

class FillPlatesDetailsScreen extends StatefulHookConsumerWidget {
  const FillPlatesDetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FillPlatesDetailsScreenState();
}

class _FillPlatesDetailsScreenState extends ConsumerState<FillPlatesDetailsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Province? selectProvince = ref.watch(selectProvinceProvider);
    final PlatesType selectPlatesType = ref.watch(selectPlatesTypeProvider);
    late final AsyncValue<ArraySpecialFront> fetchSpecialFront;
    if (selectPlatesType == PlatesType.platesType6) {
      fetchSpecialFront = ref.watch(fetchSpecialFrontProvider);
    }
    final addPlatesPhoto = ref.watch(addPlatesPhotoProvider);
    final frontTextController = useTextEditingController();
    final totalController = useTextEditingController();
    final frontNumberController = useTextEditingController(text: frontNumber.first);
    final backNumberController = useTextEditingController();
    final informationController = useTextEditingController();
    final priceController = useTextEditingController();
    final specialFrontId = useState(1);
    final pendingFetch = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingFetch.value);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.add_plates)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.preview,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
                const SizedBox(height: 4.0),
                Card(
                  color: Theme.of(context).colorScheme.onInverseSurface,
                  child: Container(
                    constraints: cardConstraints,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image(image: AssetImage((selectPlatesType == PlatesType.platesType4 || selectPlatesType == PlatesType.platesType6) ? 'assets/images/province/${selectProvince?.name_en}.png' : 'assets/images/placeholder/placeholder-${selectPlatesType.name}.png')),
                            if (selectPlatesType == PlatesType.platesType9)
                              AspectRatio(
                                aspectRatio: 1.36 / 1.064,
                                child: FittedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if (frontNumberController.text != '-') ...[
                                              Text(
                                                frontNumberController.text,
                                                style: TextStyle(
                                                  fontFamily: thangLuang,
                                                  fontSize: 30.0,
                                                  height: 1.0,
                                                  color: textColor(),
                                                ),
                                              ),
                                              const SizedBox(width: 4.0),
                                            ],
                                            Text(
                                              frontTextController.text,
                                              style: TextStyle(
                                                fontFamily: thangLuang,
                                                fontSize: 30.0,
                                                height: 1.0,
                                                color: textColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          selectProvince!.name_th,
                                          style: TextStyle(
                                            fontFamily: thangLuang,
                                            fontSize: 25.0,
                                            height: 1.0,
                                            color: textColor(),
                                          ),
                                        ),
                                        Text(
                                          backNumberController.text.isEmpty ? '' : int.parse(backNumberController.text.trim().replaceAll(regInt, '')).toString(),
                                          style: TextStyle(
                                            fontFamily: thangLuang,
                                            fontSize: 30.0,
                                            color: textColor(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            else
                              AspectRatio(
                                aspectRatio: 2.28 / 1.0,
                                child: FittedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if (frontNumberController.text != '-') ...[
                                              Text(
                                                frontNumberController.text,
                                                style: TextStyle(
                                                  fontFamily: thangLuang,
                                                  fontSize: 30.0,
                                                  height: 0.75,
                                                  color: textColor(),
                                                ),
                                              ),
                                              const SizedBox(width: 2.0),
                                            ],
                                            Text(
                                              frontTextController.text,
                                              style: TextStyle(
                                                fontFamily: thangLuang,
                                                fontSize: 30.0,
                                                height: 0.75,
                                                color: textColor(),
                                              ),
                                            ),
                                            const SizedBox(width: 8.0),
                                            Text(
                                              backNumberController.text.isEmpty ? '' : int.parse(backNumberController.text.trim().replaceAll(regInt, '')).toString(),
                                              style: TextStyle(
                                                fontFamily: thangLuang,
                                                fontSize: 30.0,
                                                height: 0.75,
                                                color: textColor(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          selectProvince!.name_th,
                                          style: TextStyle(
                                            fontFamily: thangLuang,
                                            fontSize: 20.0,
                                            color: textColor(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Text('THB ${priceController.text.isEmpty ? '' : commaFormat.format(int.parse(priceController.text.trim().replaceAll(regInt, ''))).replaceAll('.0', '')}', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Theme.of(context).colorScheme.primary)),
                        const SizedBox(height: 16.0),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                Text(
                  AppLocalizations.of(context)!.photo,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
                const SizedBox(height: 4.0),
                if (selectPlatesType == PlatesType.platesType9) ...[
                  addPlatesPhoto == null
                      ? Card.outlined(
                          color: Theme.of(context).colorScheme.onInverseSurface,
                          child: Container(
                            alignment: Alignment.center,
                            constraints: const BoxConstraints(maxWidth: 560.0, maxHeight: 560.0),
                            width: size.width - 32.0,
                            height: size.width - 32.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    ref.read(addPlatesPhotoProvider.notifier).pickAndCrop(ImageSource.camera, const CropAspectRatio(ratioX: 1.36, ratioY: 1.064));
                                  },
                                  icon: const Icon(Icons.photo_camera_outlined, size: 32.0),
                                ),
                                const Divider(indent: 40.0, endIndent: 40.0),
                                IconButton(
                                  onPressed: () {
                                    ref.read(addPlatesPhotoProvider.notifier).pickAndCrop(ImageSource.gallery, const CropAspectRatio(ratioX: 1.36, ratioY: 1.064));
                                  },
                                  icon: const Icon(Icons.image_outlined, size: 32.0),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Card.filled(
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            constraints: cardConstraints,
                            child: Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                Image.memory(addPlatesPhoto),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                    onPressed: () {
                                      ref.read(addPlatesPhotoProvider.notifier).delete();
                                    },
                                    icon: const Icon(Icons.delete_forever_outlined, size: 32.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                ] else ...[
                  addPlatesPhoto == null
                      ? Card.outlined(
                          color: Theme.of(context).colorScheme.onInverseSurface,
                          child: Container(
                            alignment: Alignment.center,
                            constraints: cardConstraints,
                            width: size.width - 32.0,
                            height: (size.width - 32.0) * 0.444,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    ref.read(addPlatesPhotoProvider.notifier).pickAndCrop(ImageSource.camera, const CropAspectRatio(ratioX: 2.28, ratioY: 1.0));
                                  },
                                  icon: const Icon(Icons.photo_camera_outlined, size: 32.0),
                                ),
                                const Divider(indent: 40.0, endIndent: 40.0),
                                IconButton(
                                  onPressed: () {
                                    ref.read(addPlatesPhotoProvider.notifier).pickAndCrop(ImageSource.gallery, const CropAspectRatio(ratioX: 2.28, ratioY: 1.0));
                                  },
                                  icon: const Icon(Icons.image_outlined, size: 32.0),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Card.filled(
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            constraints: cardConstraints,
                            child: Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                Image.memory(addPlatesPhoto),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                    onPressed: () {
                                      ref.read(addPlatesPhotoProvider.notifier).delete();
                                    },
                                    icon: const Icon(Icons.delete_forever_outlined, size: 32.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                ],
                const SizedBox(height: 48.0),
                if (selectPlatesType == PlatesType.platesType5) ...[
                  SizedBox(
                    height: 112.0,
                    child: TextFormField(
                      maxLength: 2,
                      controller: frontTextController,
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.series_letters,
                        helperText: '${AppLocalizations.of(context)!.example} ฆก',
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              frontTextController.clear();
                            },
                            icon: const Icon(Icons.cancel_outlined)),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty || value.length != 2 || !value.startsWith('ฆ') || !secondLetter.contains(value[1])) {
                          return AppLocalizations.of(context)!.psc;
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) => setState(() {}),
                      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                    ),
                  ),
                ] else if (selectPlatesType == PlatesType.platesType6) ...[
                  SizedBox(
                    height: 112.0,
                    child: fetchSpecialFront.when(
                      data: (data) => DropdownMenu<int>(
                        controller: frontTextController,
                        menuHeight: size.height * 0.3,
                        enableFilter: true,
                        requestFocusOnTap: true,
                        leadingIcon: const Icon(Icons.search_outlined),
                        label: Text(AppLocalizations.of(context)!.series_letters),
                        helperText: '${AppLocalizations.of(context)!.example} สุขสบาย',
                        expandedInsets: const EdgeInsets.symmetric(horizontal: 0.0),
                        onSelected: (int? value) {
                          if (value != null) specialFrontId.value = value;
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        dropdownMenuEntries: data.array.map<DropdownMenuEntry<int>>(
                          (SpecialFront value) {
                            return DropdownMenuEntry<int>(value: value.special_front_id, label: value.front);
                          },
                        ).toList(), // temp fix
                        searchCallback: (entries, query) {
                          final String searchText = frontTextController.text;
                          if (searchText.isEmpty) {
                            return null;
                          }
                          final int index = entries.indexWhere((DropdownMenuEntry<int> entry) => entry.label.contains(searchText));
                          return index != -1 ? index : null;
                        },
                      ),
                      error: (Object error, StackTrace stackTrace) => Center(child: Text(AppLocalizations.of(context)!.oops)),
                      loading: () => const Center(child: CircularProgressIndicator()),
                    ),
                  ),
                ] else ...[
                  Row(
                    children: [
                      SizedBox(
                        width: 136.0,
                        height: 112.0,
                        child: DropdownMenu<String>(
                          controller: frontNumberController,
                          label: Text(AppLocalizations.of(context)!.front_number),
                          initialSelection: frontNumber.first,
                          enableSearch: false,
                          expandedInsets: const EdgeInsets.symmetric(horizontal: 0.0),
                          helperText: '${AppLocalizations.of(context)!.example} 9',
                          onSelected: (String? value) {
                            FocusManager.instance.primaryFocus?.unfocus();
                            setState(() {});
                          },
                          dropdownMenuEntries: frontNumber.map<DropdownMenuEntry<String>>(
                            (String value) {
                              return DropdownMenuEntry<String>(value: value, label: value);
                            },
                          ).toList(),
                        ),
                      ),
                      const SizedBox(width: 48.0),
                      Expanded(
                        child: SizedBox(
                          height: 112.0,
                          child: TextFormField(
                            maxLength: selectPlatesType == PlatesType.platesType9 ? 3 : 2,
                            controller: frontTextController,
                            decoration: InputDecoration(
                              labelText: AppLocalizations.of(context)!.series_letters,
                              helperText: '${AppLocalizations.of(context)!.example} กก',
                              border: const OutlineInputBorder(),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    frontTextController.clear();
                                  },
                                  icon: const Icon(Icons.cancel_outlined)),
                            ),
                            validator: (String? value) {
                              if (selectPlatesType == PlatesType.platesType9) {
                                if (value == null || value.isEmpty || value.length <= 1 || !secondLetter.contains(value[0]) || !secondLetter.contains(value[1])) {
                                  return AppLocalizations.of(context)!.psc;
                                } else {
                                  return null;
                                }
                              } else {
                                if (value == null || value.isEmpty || value.length != 2 || !firstLetter.contains(value[0]) || !secondLetter.contains(value[1])) {
                                  return AppLocalizations.of(context)!.psc;
                                } else {
                                  return null;
                                }
                              }
                            },
                            onChanged: (value) => setState(() {}),
                            onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
                SizedBox(
                  height: 112.0,
                  child: TextFormField(
                    maxLength: 4,
                    controller: backNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.number,
                      helperText: '${AppLocalizations.of(context)!.example} 789',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {
                            backNumberController.clear();
                          },
                          icon: const Icon(Icons.cancel_outlined)),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty || !numberRegex.hasMatch(value)) {
                        return AppLocalizations.of(context)!.psc;
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) => setState(() {}),
                    onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                  ),
                ),
                SizedBox(
                  height: 112.0,
                  child: TextFormField(
                    maxLength: 2,
                    controller: totalController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.total,
                      helperText: '${AppLocalizations.of(context)!.example} 42',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {
                            totalController.clear();
                          },
                          icon: const Icon(Icons.cancel_outlined)),
                    ),
                    onChanged: (value) => setState(() {}),
                    onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                  ),
                ),
                SizedBox(
                  height: 184.0,
                  child: TextFormField(
                    maxLines: 4,
                    maxLength: 140,
                    controller: informationController,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.details,
                      helperText: '${AppLocalizations.of(context)!.example} ผลรวมดี พร้อมสลับ..',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {
                            informationController.clear();
                          },
                          icon: const Icon(Icons.cancel_outlined)),
                    ),
                    onChanged: (value) => setState(() {}),
                    onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                  ),
                ),
                SizedBox(
                  height: 112.0,
                  child: TextFormField(
                    maxLength: 9,
                    controller: priceController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.price,
                      helperText: AppLocalizations.of(context)!.pmb,
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {
                            priceController.clear();
                          },
                          icon: const Icon(Icons.cancel_outlined)),
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
                ),
                FilledButton(
                    onPressed: (snapshot.connectionState == ConnectionState.waiting || frontTextController.text.trim().isEmpty)
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              pendingFetch.value = ref
                                  .read(addNewPlatesProvider(
                                frontTextController.text.trim(),
                                totalController.text.trim().isEmpty ? 0 : int.parse(totalController.text.trim().replaceAll(regInt, '')),
                                (frontNumberController.text == frontNumber.first) ? 0 : int.parse(frontNumberController.text),
                                int.parse(backNumberController.text.trim().replaceAll(regInt, '')),
                                specialFrontId.value,
                                informationController.text.trim().isEmpty ? null : informationController.text.trim(),
                                int.parse(priceController.text.trim().replaceAll(regInt, '')),
                                false,
                              ).future)
                                  .then((int statusCode) {
                                if (!context.mounted) return;
                                switch (statusCode) {
                                  case 409:
                                    ref.read(displaySnackBarProvider.notifier).display(AppLocalizations.of(context)!.duplicate);
                                  case 200:
                                    ref.read(addPlatesPhotoProvider.notifier).delete();
                                    frontTextController.clear();
                                    totalController.clear();
                                    frontNumberController.text = frontNumber.first;
                                    backNumberController.clear();
                                    informationController.clear();
                                    priceController.clear();
                                    ref.read(displaySnackBarProvider.notifier).display(AppLocalizations.of(context)!.upload_successfully);
                                  default:
                                    ref.read(displaySnackBarProvider.notifier).display(AppLocalizations.of(context)!.internal_server_error);
                                }
                                setState(() {});
                              });
                            }
                          },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.add),
                        const SizedBox(width: 4.0),
                        Text(AppLocalizations.of(context)!.add_plates),
                      ],
                    )),
                const SizedBox(height: 8.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color textColor() {
    switch (ref.read(selectPlatesTypeProvider)) {
      case PlatesType.platesType2 || PlatesType.platesType7:
        return const Color(0xff0A6D3F);
      case PlatesType.platesType3 || PlatesType.platesType8:
        return const Color(0xff045EAA);
      default:
        return Colors.black;
    }
  }
}
