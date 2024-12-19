import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../constants.dart';
import '../functions.dart';
import '../initialize.dart';
import '../provider/query_providers.dart';
import '../provider/settings_providers.dart';

class PlatesDetailsScreen extends StatefulHookConsumerWidget {
  const PlatesDetailsScreen({super.key, required this.platesId});
  final int platesId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PlatesDetailsScreenState();
}

class _PlatesDetailsScreenState extends ConsumerState<PlatesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final SelectView updateView = ref.watch(updateViewProvider);
    final bool virtualPlatesOnly = ref.watch(virtualPlatesOnlyProvider);
    final queryPlatesInfo = ref.watch(queryPlatesInfoProvider(widget.platesId));
    final pendingFetch = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingFetch.value);
    return queryPlatesInfo.when(
      data: (data) {
        if (data.statusCode == 200) {
          final queryPlatesReacts = ref.watch(queryPlatesReactsProvider(
            data.model.exact.first.plates_id,
            data.model.exact.first.liked_plates_id,
            data.model.exact.first.saved_plates_id,
            data.model.exact.first.liked_store_id,
            data.model.exact.first.saved_store_id,
            data.model.exact.first.liked_plates_id_count,
            data.model.exact.first.saved_plates_id_count,
            data.model.exact.first.reacts_count,
          ));
          final querySuggestionBackNumber = ref.watch(querySuggestionBackNumberProvider(data.model.exact.first.back_number, 1000, 0));
          return Scaffold(
            appBar: AppBar(
              title: Text('${data.model.exact.first.front_number == 0 ? '' : data.model.exact.first.front_number}${data.model.exact.first.front_text}  ${data.model.exact.first.back_number}   ${provincefromId(data.model.exact.first.province_id).name_th}'.trim()),
              actions: [
                IconButton(
                  icon: const Icon(Icons.link_outlined),
                  onPressed: () {
                    //
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.filter_alt_outlined),
                  onPressed: () {
                    context.push('/plates_filter_screen');
                  },
                )
              ],
            ),
            body: SafeArea(
                child: SingleChildScrollView(
              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                Center(
                  child: Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      constraints: cardConstraints,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              children: [
                                const SizedBox(width: 8.0),
                                GestureDetector(
                                  child: CircleAvatar(
                                    backgroundImage: data.model.exact.first.profile_uri == null ? null : CachedNetworkImageProvider('$cdnDomainName/${data.model.exact.first.profile_uri}'),
                                    child: data.model.exact.first.profile_uri == null ? Text(data.model.exact.first.name.substring(0, 3)) : null,
                                  ),
                                  onTap: () {
                                    //
                                  },
                                ),
                                const SizedBox(width: 8.0),
                                FittedBox(
                                    child: Text(
                                  data.model.exact.first.name,
                                  style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.secondary),
                                )),
                                const Spacer(),
                                IconButton(
                                  icon: const Icon(Icons.chat_outlined),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(queryPlatesReacts.when(
                                    data: (data) => data.liked_plates_id == null ? Icons.favorite_border_outlined : Icons.favorite_outlined,
                                    error: (Object error, StackTrace stackTrace) => Icons.favorite_border_outlined,
                                    loading: () => Icons.favorite_border_outlined,
                                  )),
                                  onPressed: (snapshot.connectionState == ConnectionState.waiting)
                                      ? null
                                      : () {
                                          pendingFetch.value = ref.read(addRemoveLikedPlatesProvider(data.model.exact.first.plates_id, queryPlatesReacts.when(data: (data) => data.liked_plates_id == null, error: (Object error, StackTrace stackTrace) => false, loading: () => false)).future).then((onValue) {
                                            if (onValue == 200) {
                                              pendingFetch.value = ref
                                                  .read(queryPlatesReactsProvider(
                                                    data.model.exact.first.plates_id,
                                                    data.model.exact.first.liked_plates_id,
                                                    data.model.exact.first.saved_plates_id,
                                                    data.model.exact.first.liked_store_id,
                                                    data.model.exact.first.saved_store_id,
                                                    data.model.exact.first.liked_plates_id_count,
                                                    data.model.exact.first.saved_plates_id_count,
                                                    data.model.exact.first.reacts_count,
                                                  ).notifier)
                                                  .fetch(data.model.exact.first.plates_id);
                                            }
                                          });
                                        },
                                ),
                                IconButton(
                                  icon: Icon(queryPlatesReacts.when(
                                    data: (data) => data.saved_plates_id == null ? Icons.bookmark_border_outlined : Icons.bookmark_outlined,
                                    error: (Object error, StackTrace stackTrace) => Icons.bookmark_border_outlined,
                                    loading: () => Icons.bookmark_border_outlined,
                                  )),
                                  onPressed: (snapshot.connectionState == ConnectionState.waiting)
                                      ? null
                                      : () {
                                          pendingFetch.value = ref.read(addRemoveSavedPlatesProvider(data.model.exact.first.plates_id, queryPlatesReacts.when(data: (data) => data.saved_plates_id == null, error: (Object error, StackTrace stackTrace) => false, loading: () => false)).future).then((onValue) {
                                            if (onValue == 200) {
                                              pendingFetch.value = ref
                                                  .read(queryPlatesReactsProvider(
                                                    data.model.exact.first.plates_id,
                                                    data.model.exact.first.liked_plates_id,
                                                    data.model.exact.first.saved_plates_id,
                                                    data.model.exact.first.liked_store_id,
                                                    data.model.exact.first.saved_store_id,
                                                    data.model.exact.first.liked_plates_id_count,
                                                    data.model.exact.first.saved_plates_id_count,
                                                    data.model.exact.first.reacts_count,
                                                  ).notifier)
                                                  .fetch(data.model.exact.first.plates_id);
                                            }
                                          });
                                        },
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: data.model.exact.first.plates_uri != null
                                ? CachedNetworkImage(
                                    imageUrl: '$cdnDomainName/${data.model.exact.first.plates_uri}',
                                    placeholder: (context, url) => AspectRatio(aspectRatio: data.model.exact.first.vehicle_type_id == VehicleType.vehicleType12.vehicle_type_id ? 1.36 / 1.064 : 2.28 / 1.0),
                                    errorWidget: (context, url, error) => AspectRatio(
                                      aspectRatio: data.model.exact.first.vehicle_type_id == VehicleType.vehicleType12.vehicle_type_id ? 1.36 / 1.064 : 2.28 / 1.0,
                                      child: Icon(Icons.error_outline_outlined, color: Theme.of(context).colorScheme.error),
                                    ),
                                  )
                                : AspectRatio(
                                    aspectRatio: data.model.exact.first.vehicle_type_id == VehicleType.vehicleType12.vehicle_type_id ? 1.36 / 1.064 : 2.28 / 1.0,
                                    child: Stack(
                                      children: [
                                        Image.asset((data.model.exact.first.plates_type_id == PlatesType.platesType4.plates_type_id || data.model.exact.first.plates_type_id == PlatesType.platesType6.plates_type_id)
                                            ? 'assets/images/province/${provincefromId(data.model.exact.first.province_id).name_en}.png'
                                            : 'assets/images/placeholder/placeholder-${platesTypefromId(data.model.exact.first.plates_type_id).name}.png'),
                                        AspectRatio(
                                          aspectRatio: data.model.exact.first.vehicle_type_id == VehicleType.vehicleType12.vehicle_type_id ? 1.36 / 1.064 : 2.28 / 1.0,
                                          child: FittedBox(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: data.model.exact.first.vehicle_type_id == VehicleType.vehicleType12.vehicle_type_id
                                                  ? [
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          if (data.model.exact.first.front_number != 0) ...[
                                                            Row(
                                                              mainAxisSize: MainAxisSize.min,
                                                              children: [
                                                                Text(
                                                                  data.model.exact.first.front_number.toString(),
                                                                  style: TextStyle(
                                                                    fontFamily: thangLuang,
                                                                    fontSize: 25.0,
                                                                    height: 1.0,
                                                                    color: textColor(data.model.exact.first.plates_type_id),
                                                                  ),
                                                                ),
                                                                const SizedBox(width: 8.0),
                                                              ],
                                                            ),
                                                          ],
                                                          Text(
                                                            data.model.exact.first.front_text,
                                                            style: TextStyle(
                                                              fontFamily: thangLuang,
                                                              fontSize: 25.0,
                                                              height: 1.0,
                                                              color: textColor(data.model.exact.first.plates_type_id),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 2.0),
                                                      Text(
                                                        ' ${provincefromId(data.model.exact.first.province_id).name_th} ',
                                                        style: TextStyle(
                                                          fontFamily: thangLuang,
                                                          fontSize: 20.0,
                                                          height: 1.0,
                                                          color: textColor(data.model.exact.first.plates_type_id),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 1.0),
                                                      Text(
                                                        data.model.exact.first.back_number.toString(),
                                                        style: TextStyle(
                                                          fontFamily: thangLuang,
                                                          fontSize: 25.0,
                                                          color: textColor(data.model.exact.first.plates_type_id),
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
                                                          if (data.model.exact.first.front_number != 0) ...[
                                                            Row(
                                                              mainAxisSize: MainAxisSize.min,
                                                              children: [
                                                                Text(
                                                                  data.model.exact.first.front_number.toString(),
                                                                  style: TextStyle(
                                                                    fontFamily: thangLuang,
                                                                    fontSize: 20.0,
                                                                    height: 1.0,
                                                                    color: textColor(data.model.exact.first.plates_type_id),
                                                                  ),
                                                                ),
                                                                const SizedBox(width: 4.0),
                                                              ],
                                                            ),
                                                          ],
                                                          Text(
                                                            data.model.exact.first.front_text,
                                                            style: TextStyle(
                                                              fontFamily: thangLuang,
                                                              fontSize: 23.0,
                                                              height: 1.0,
                                                              color: textColor(data.model.exact.first.plates_type_id),
                                                            ),
                                                          ),
                                                          const SizedBox(width: 8.0),
                                                          Text(
                                                            data.model.exact.first.back_number.toString(),
                                                            style: TextStyle(
                                                              fontFamily: thangLuang,
                                                              fontSize: 20.0,
                                                              height: 1.0,
                                                              color: textColor(data.model.exact.first.plates_type_id),
                                                            ),
                                                          ),
                                                          const SizedBox(width: 1.0),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 4.0),
                                                      Text(
                                                        provincefromId(data.model.exact.first.province_id).name_th,
                                                        style: TextStyle(
                                                          fontFamily: thangLuang,
                                                          fontSize: 17.0,
                                                          color: textColor(data.model.exact.first.plates_type_id),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4.0),
                                                    ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                            child: Row(
                              children: [
                                Text('฿ ${commaFormat.format(data.model.exact.first.price).replaceAll('.0', '')}', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.primary)),
                                const Spacer(),
                                Text('${AppLocalizations.of(context)!.total}:  ${data.model.exact.first.total == 0 ? '-' : data.model.exact.first.total}', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.tertiary)),
                                const Spacer(),
                                const Icon(Icons.thumb_up),
                                const SizedBox(width: 8.0),
                                Text(
                                    queryPlatesReacts.when(
                                      data: (data) => data.reacts_count == 0 ? '' : data.reacts_count.toString(),
                                      error: (Object error, StackTrace stackTrace) => '',
                                      loading: () => '',
                                    ),
                                    style: Theme.of(context).textTheme.titleMedium),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${AppLocalizations.of(context)!.details}:  ', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant)),
                                Expanded(child: Text(data.model.exact.first.information ?? '-', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.secondary))),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${AppLocalizations.of(context)!.add_date}:  ', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant)),
                                Expanded(
                                    child: Text(
                                        switch (Localizations.localeOf(context)) {
                                          th => timeAgoTH(DateTime.parse(data.model.exact.first.add_date).toLocal()),
                                          en => timeAgoEN(DateTime.parse(data.model.exact.first.add_date).toLocal()),
                                          _ => timeAgoTH(DateTime.parse(data.model.exact.first.add_date).toLocal()),
                                        },
                                        style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.secondary))),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16.0),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                Row(children: [
                  const Expanded(child: Divider(indent: 16.0, endIndent: 16.0)),
                  Text(AppLocalizations.of(context)!.you_may_like, style: Theme.of(context).textTheme.labelLarge),
                  const Expanded(child: Divider(indent: 16.0, endIndent: 16.0)),
                ]),
                const SizedBox(height: 24.0),
                querySuggestionBackNumber.when(
                  data: (data) {
                    if (data.statusCode == 200) {
                      if (updateView == SelectView.card) {
                        return Wrap(
                          children: (data.model.exact + data.model.suggestion).map((toElement) {
                            final queryPlatesReacts = ref.watch(queryPlatesReactsProvider(
                              toElement.plates_id,
                              toElement.liked_plates_id,
                              toElement.saved_plates_id,
                              toElement.liked_store_id,
                              toElement.saved_store_id,
                              toElement.liked_plates_id_count,
                              toElement.saved_plates_id_count,
                              toElement.reacts_count,
                            ));
                            return Card(
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
                                            icon: Icon(queryPlatesReacts.when(
                                              data: (data) => data.liked_plates_id == null ? Icons.favorite_border_outlined : Icons.favorite_outlined,
                                              error: (Object error, StackTrace stackTrace) => Icons.favorite_border_outlined,
                                              loading: () => Icons.favorite_border_outlined,
                                            )),
                                            onPressed: (snapshot.connectionState == ConnectionState.waiting)
                                                ? null
                                                : () {
                                                    pendingFetch.value = ref.read(addRemoveLikedPlatesProvider(toElement.plates_id, queryPlatesReacts.when(data: (data) => data.liked_plates_id == null, error: (Object error, StackTrace stackTrace) => false, loading: () => false)).future).then((onValue) {
                                                      if (onValue == 200) {
                                                        pendingFetch.value = ref
                                                            .read(queryPlatesReactsProvider(
                                                              toElement.plates_id,
                                                              toElement.liked_plates_id,
                                                              toElement.saved_plates_id,
                                                              toElement.liked_store_id,
                                                              toElement.saved_store_id,
                                                              toElement.liked_plates_id_count,
                                                              toElement.saved_plates_id_count,
                                                              toElement.reacts_count,
                                                            ).notifier)
                                                            .fetch(toElement.plates_id);
                                                      }
                                                    });
                                                  },
                                          ),
                                          IconButton(
                                            icon: Icon(queryPlatesReacts.when(
                                              data: (data) => data.saved_plates_id == null ? Icons.bookmark_border_outlined : Icons.bookmark_outlined,
                                              error: (Object error, StackTrace stackTrace) => Icons.bookmark_border_outlined,
                                              loading: () => Icons.bookmark_border_outlined,
                                            )),
                                            onPressed: (snapshot.connectionState == ConnectionState.waiting)
                                                ? null
                                                : () {
                                                    pendingFetch.value = ref.read(addRemoveSavedPlatesProvider(toElement.plates_id, queryPlatesReacts.when(data: (data) => data.saved_plates_id == null, error: (Object error, StackTrace stackTrace) => false, loading: () => false)).future).then((onValue) {
                                                      if (onValue == 200) {
                                                        pendingFetch.value = ref
                                                            .read(queryPlatesReactsProvider(
                                                              toElement.plates_id,
                                                              toElement.liked_plates_id,
                                                              toElement.saved_plates_id,
                                                              toElement.liked_store_id,
                                                              toElement.saved_store_id,
                                                              toElement.liked_plates_id_count,
                                                              toElement.saved_plates_id_count,
                                                              toElement.reacts_count,
                                                            ).notifier)
                                                            .fetch(toElement.plates_id);
                                                      }
                                                    });
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
                                                                  const SizedBox(height: 4.0),
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
                                            const SizedBox(width: 8.0),
                                            Text(
                                                queryPlatesReacts.when(
                                                  data: (data) => data.reacts_count == 0 ? '' : data.reacts_count.toString(),
                                                  error: (Object error, StackTrace stackTrace) => '',
                                                  loading: () => '',
                                                ),
                                                style: Theme.of(context).textTheme.titleMedium),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  // context.go(Uri(path: '/pattern_details_screen/plates_details_screen/${toElement.plates_id}', queryParameters: {
                                  //   'name': widget.name,
                                  //   'path': widget.path,
                                  //   'pattern': widget.pattern,
                                  //   'plates_type_id': widget.plates_type_id.toString(),
                                  //   'province_id': widget.province_id.toString(),
                                  //   'vehicle_type_id': widget.vehicle_type_id.toString(),
                                  //   'limit': widget.limit.toString(),
                                  //   'offset': widget.offset.toString(),
                                  // }).toString());
                                },
                              ),
                            );
                          }).toList(),
                        );
                      } else {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: (data.model.exact + data.model.suggestion).map((toElement) {
                            final queryPlatesReacts = ref.watch(queryPlatesReactsProvider(
                              toElement.plates_id,
                              toElement.liked_plates_id,
                              toElement.saved_plates_id,
                              toElement.liked_store_id,
                              toElement.saved_store_id,
                              toElement.liked_plates_id_count,
                              toElement.saved_plates_id_count,
                              toElement.reacts_count,
                            ));
                            return Card(
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
                                      icon: Icon(queryPlatesReacts.when(
                                        data: (data) => data.liked_plates_id == null ? Icons.favorite_border_outlined : Icons.favorite_outlined,
                                        error: (Object error, StackTrace stackTrace) => Icons.favorite_border_outlined,
                                        loading: () => Icons.favorite_border_outlined,
                                      )),
                                      onPressed: (snapshot.connectionState == ConnectionState.waiting)
                                          ? null
                                          : () {
                                              pendingFetch.value = ref.read(addRemoveLikedPlatesProvider(toElement.plates_id, queryPlatesReacts.when(data: (data) => data.liked_plates_id == null, error: (Object error, StackTrace stackTrace) => false, loading: () => false)).future).then((onValue) {
                                                if (onValue == 200) {
                                                  pendingFetch.value = ref
                                                      .read(queryPlatesReactsProvider(
                                                        toElement.plates_id,
                                                        toElement.liked_plates_id,
                                                        toElement.saved_plates_id,
                                                        toElement.liked_store_id,
                                                        toElement.saved_store_id,
                                                        toElement.liked_plates_id_count,
                                                        toElement.saved_plates_id_count,
                                                        toElement.reacts_count,
                                                      ).notifier)
                                                      .fetch(toElement.plates_id);
                                                }
                                              });
                                            },
                                    ),
                                    IconButton(
                                      icon: Icon(queryPlatesReacts.when(
                                        data: (data) => data.saved_plates_id == null ? Icons.bookmark_border_outlined : Icons.bookmark_outlined,
                                        error: (Object error, StackTrace stackTrace) => Icons.bookmark_border_outlined,
                                        loading: () => Icons.bookmark_border_outlined,
                                      )),
                                      onPressed: (snapshot.connectionState == ConnectionState.waiting)
                                          ? null
                                          : () {
                                              pendingFetch.value = ref.read(addRemoveSavedPlatesProvider(toElement.plates_id, queryPlatesReacts.when(data: (data) => data.saved_plates_id == null, error: (Object error, StackTrace stackTrace) => false, loading: () => false)).future).then((onValue) {
                                                if (onValue == 200) {
                                                  pendingFetch.value = ref
                                                      .read(queryPlatesReactsProvider(
                                                        toElement.plates_id,
                                                        toElement.liked_plates_id,
                                                        toElement.saved_plates_id,
                                                        toElement.liked_store_id,
                                                        toElement.saved_store_id,
                                                        toElement.liked_plates_id_count,
                                                        toElement.saved_plates_id_count,
                                                        toElement.reacts_count,
                                                      ).notifier)
                                                      .fetch(toElement.plates_id);
                                                }
                                              });
                                            },
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  //
                                },
                              ),
                            );
                          }).toList(),
                        );
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
              ]),
            )),
          );
        } else {
          return Scaffold(
              body: Center(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(Symbols.error, size: 96.0, weight: 100.0, color: Theme.of(context).colorScheme.error),
            const SizedBox(height: 24.0),
            Text(AppLocalizations.of(context)!.oops, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.error)),
          ])));
        }
      },
      error: (Object error, StackTrace stackTrace) => Scaffold(
          body: Center(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(Symbols.error, size: 96.0, weight: 100.0, color: Theme.of(context).colorScheme.error),
        const SizedBox(height: 24.0),
        Text(AppLocalizations.of(context)!.oops, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.error)),
      ]))),
      loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
