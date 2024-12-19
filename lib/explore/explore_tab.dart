import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import '../constants.dart';
import '../functions.dart';
import '../initialize.dart';
import '../provider/query_providers.dart';
import '../provider/settings_providers.dart';

class ExploreTab extends HookConsumerWidget {
  const ExploreTab({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = MediaQuery.of(context).size.width;
    final SelectView updateView = ref.watch(updateViewProvider);
    final bool virtualPlatesOnly = ref.watch(virtualPlatesOnlyProvider);
    final queryPatternDetails = ref.watch(queryPatternDetailsExploreProvider(
      '/query_explore',
      nullAliasString,
      nullAliasInt,
      nullAliasInt,
      nullAliasInt,
      1000,
      nullAliasInt,
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.explore),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt_outlined),
            onPressed: () {
              context.push('/plates_filter_screen');
            },
          )
        ],
      ),
      body: SafeArea(
        child: queryPatternDetails.when(
          data: (data) {
            if (data.statusCode == 200) {
              if (data.model.exact.isNotEmpty) {
                return SingleChildScrollView(
                  child: (updateView == SelectView.card)
                      ? Wrap(
                          children: data.model.exact
                              .map((toElement) => Card(
                                    color: Theme.of(context).colorScheme.onInverseSurface,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                                    clipBehavior: Clip.hardEdge,
                                    child: InkWell(
                                      child: SizedBox(
                                        width: width < 660.0 ? ((width) / 2.0) - 10.0 : 210.0,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const SizedBox(width: 4.0),
                                                Expanded(
                                                    child: Text(
                                                  toElement.name,
                                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.secondary),
                                                  overflow: TextOverflow.ellipsis,
                                                )),
                                                IconButton(
                                                  icon: const Icon(Icons.favorite_border_outlined),
                                                  onPressed: () {
                                                    //
                                                  },
                                                ),
                                                IconButton(
                                                  icon: const Icon(Icons.bookmark_border_outlined),
                                                  onPressed: () {
                                                    //
                                                  },
                                                ),
                                              ],
                                            ),
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(4.0),
                                              child: toElement.plates_uri != null && !virtualPlatesOnly
                                                  ? CachedNetworkImage(
                                                      imageUrl: '$cdnDomainName/${toElement.plates_uri}',
                                                      placeholder: (context, url) => AspectRatio(aspectRatio: toElement.vehicle_type_id == VehicleType.vehicleType12.vehicle_type_id ? 1.36 / 1.064 : 2.28 / 1.0),
                                                      errorWidget: (context, url, error) => AspectRatio(
                                                        aspectRatio: toElement.vehicle_type_id == VehicleType.vehicleType12.vehicle_type_id ? 1.36 / 1.064 : 2.28 / 1.0,
                                                        child: Icon(Icons.error_outline_outlined, color: Theme.of(context).colorScheme.error),
                                                      ),
                                                    )
                                                  : AspectRatio(
                                                      aspectRatio: toElement.vehicle_type_id == VehicleType.vehicleType12.vehicle_type_id ? 1.36 / 1.064 : 2.28 / 1.0,
                                                      child: Stack(
                                                        children: [
                                                          Image.asset((toElement.plates_type_id == PlatesType.platesType4.plates_type_id || toElement.plates_type_id == PlatesType.platesType6.plates_type_id) ? 'assets/images/province/${provincefromId(toElement.province_id).name_en}.png' : 'assets/images/placeholder/placeholder-${platesTypefromId(toElement.plates_type_id).name}.png'),
                                                          AspectRatio(
                                                            aspectRatio: toElement.vehicle_type_id == VehicleType.vehicleType12.vehicle_type_id ? 1.36 / 1.064 : 2.28 / 1.0,
                                                            child: FittedBox(
                                                              child: Column(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children: toElement.vehicle_type_id == VehicleType.vehicleType12.vehicle_type_id
                                                                    ? [
                                                                        Row(
                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                          children: [
                                                                            if (toElement.front_number != 0) ...[
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Text(
                                                                                    toElement.front_number.toString(),
                                                                                    style: TextStyle(
                                                                                      fontFamily: thangLuang,
                                                                                      fontSize: 25.0,
                                                                                      height: 1.0,
                                                                                      color: textColor(toElement.plates_type_id),
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(width: 8.0),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                            Text(
                                                                              toElement.front_text,
                                                                              style: TextStyle(
                                                                                fontFamily: thangLuang,
                                                                                fontSize: 25.0,
                                                                                height: 1.0,
                                                                                color: textColor(toElement.plates_type_id),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        const SizedBox(height: 2.0),
                                                                        Text(
                                                                          ' ${provincefromId(toElement.province_id).name_th} ',
                                                                          style: TextStyle(
                                                                            fontFamily: thangLuang,
                                                                            fontSize: 20.0,
                                                                            height: 1.0,
                                                                            color: textColor(toElement.plates_type_id),
                                                                          ),
                                                                        ),
                                                                        const SizedBox(height: 1.0),
                                                                        Text(
                                                                          toElement.back_number.toString(),
                                                                          style: TextStyle(
                                                                            fontFamily: thangLuang,
                                                                            fontSize: 25.0,
                                                                            color: textColor(toElement.plates_type_id),
                                                                          ),
                                                                        ),
                                                                        const SizedBox(height: 2.0),
                                                                      ]
                                                                    : [
                                                                        const SizedBox(height: 1.0),
                                                                        Row(
                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                          children: [
                                                                            const SizedBox(width: 1.0),
                                                                            if (toElement.front_number != 0) ...[
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Text(
                                                                                    toElement.front_number.toString(),
                                                                                    style: TextStyle(
                                                                                      fontFamily: thangLuang,
                                                                                      fontSize: 20.0,
                                                                                      height: 1.0,
                                                                                      color: textColor(toElement.plates_type_id),
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(width: 4.0),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                            Text(
                                                                              toElement.front_text,
                                                                              style: TextStyle(
                                                                                fontFamily: thangLuang,
                                                                                fontSize: 23.0,
                                                                                height: 1.0,
                                                                                color: textColor(toElement.plates_type_id),
                                                                              ),
                                                                            ),
                                                                            const SizedBox(width: 8.0),
                                                                            Text(
                                                                              toElement.back_number.toString(),
                                                                              style: TextStyle(
                                                                                fontFamily: thangLuang,
                                                                                fontSize: 20.0,
                                                                                height: 1.0,
                                                                                color: textColor(toElement.plates_type_id),
                                                                              ),
                                                                            ),
                                                                            const SizedBox(width: 1.0),
                                                                          ],
                                                                        ),
                                                                        const SizedBox(height: 4.0),
                                                                        Text(
                                                                          provincefromId(toElement.province_id).name_th,
                                                                          style: TextStyle(
                                                                            fontFamily: thangLuang,
                                                                            fontSize: 17.0,
                                                                            color: textColor(toElement.plates_type_id),
                                                                          ),
                                                                        ),
                                                                        const SizedBox(height: 2.0),
                                                                      ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Expanded(child: Text('฿ ${commaFormat.format(toElement.price).replaceAll('.0', '')}', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.primary))),
                                                  if (toElement.total != 0) Text(toElement.total.toString(), style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.tertiary)),
                                                  const SizedBox(width: 16.0),
                                                  const Icon(Icons.thumb_up),
                                                  const SizedBox(width: 4.0),
                                                  Text(toElement.reacts_count.toString(), style: Theme.of(context).textTheme.titleMedium),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        // here
                                      },
                                    ),
                                  ))
                              .toList(),
                        )
                      : Column(
                          children: data.model.exact
                              .map(
                                (toElement) => Card(
                                  elevation: 0.25,
                                  color: Theme.of(context).colorScheme.onInverseSurface,
                                  clipBehavior: Clip.hardEdge,
                                  child: InkWell(
                                    child: Row(
                                      children: [
                                        const SizedBox(width: 4.0),
                                        SizedBox(
                                          width: 80.0,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const SizedBox(height: 8.0),
                                              GestureDetector(
                                                child: CircleAvatar(
                                                  backgroundImage: toElement.profile_uri == null ? null : CachedNetworkImageProvider('$cdnDomainName/${toElement.profile_uri}'),
                                                  child: toElement.profile_uri == null ? Text(toElement.name.substring(0, 3)) : null,
                                                ),
                                                onTap: () {
                                                  //
                                                },
                                              ),
                                              const SizedBox(height: 4.0),
                                              Text(
                                                toElement.name,
                                                style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.secondary),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const SizedBox(height: 4.0),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 4.0),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(toElement.front_number == 0 ? toElement.front_text : '${toElement.front_number} ${toElement.front_text}', style: Theme.of(context).textTheme.headlineSmall),
                                              const SizedBox(height: 4.0),
                                              FittedBox(
                                                  child: Text(
                                                provincefromId(toElement.province_id).name_th,
                                                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.secondary),
                                              )),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 8.0),
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(toElement.back_number.toString(), style: Theme.of(context).textTheme.headlineSmall),
                                              const SizedBox(height: 4.0),
                                              FittedBox(
                                                child: Text(
                                                  '฿ ${commaFormat.format(toElement.price).replaceAll('.0', '')}',
                                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.primary),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(width: 24.0, alignment: Alignment.center, child: (toElement.total != 0) ? Text(toElement.total.toString(), style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).colorScheme.tertiary)) : null),
                                        IconButton(
                                          icon: const Icon(Icons.favorite_border_outlined),
                                          onPressed: () {
                                            //
                                          },
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.bookmark_border_outlined),
                                          onPressed: () {
                                            //
                                          },
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      //
                                    },
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                );
              } else {
                return Center(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Icon(Symbols.search_off, size: 96.0, weight: 100.0, color: Theme.of(context).colorScheme.secondary),
                  const SizedBox(height: 24.0),
                  Text(AppLocalizations.of(context)!.not_found, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.secondary)),
                ]));
              }
            } else {
              return Center(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                Icon(Symbols.error, size: 96.0, weight: 100.0, color: Theme.of(context).colorScheme.error),
                const SizedBox(height: 24.0),
                Text(AppLocalizations.of(context)!.oops, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.error)),
              ]));
            }
          },
          error: (Object error, StackTrace stackTrace) => Center(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(Symbols.error, size: 96.0, weight: 100.0, color: Theme.of(context).colorScheme.error),
            const SizedBox(height: 24.0),
            Text(AppLocalizations.of(context)!.oops, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.error)),
          ])),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
