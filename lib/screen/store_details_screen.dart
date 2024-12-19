import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../initialize.dart';
import '../provider/query_providers.dart';

class StoreDetailsScreen extends StatefulHookConsumerWidget {
  const StoreDetailsScreen({super.key, required this.storeId});
  final int storeId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StoreDetailsScreenState();
}

class _StoreDetailsScreenState extends ConsumerState<StoreDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final queryUsersInfo = ref.watch(queryUsersInfoProvider(widget.storeId));
    final queryUsersPlatesPin = ref.watch(queryUsersPlatesProvider('/query_users_plates_pin', widget.storeId, 1000, 0));
    final queryUsersPlatesUnpin = ref.watch(queryUsersPlatesProvider('/query_users_plates_unpin', widget.storeId, 1000, 0));
    return queryUsersInfo.when(
      data: (data) {
        if (data.statusCode == 200 && data.model.exact.isNotEmpty) {
          return Scaffold(
            appBar: AppBar(
              title: Text(data.model.exact.first.name),
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // if (data.model.exact.first.cover_uri == null)
                  //   Center(
                  //       child: Column(mainAxisSize: MainAxisSize.min, children: [
                  //     Icon(Symbols.image, size: 96.0, weight: 100.0, color: Theme.of(context).colorScheme.secondary),
                  //     const SizedBox(height: 24.0),
                  //     Text(AppLocalizations.of(context)!.no_cover_photo, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.secondary)),
                  //   ]))
                  // else
                  //   Center(
                  //       child: CachedNetworkImage(
                  //     imageUrl: '$cdnDomainName/${data.model.exact.first.cover_uri}',
                  //     placeholder: (context, url) => Center(
                  //         child: Column(mainAxisSize: MainAxisSize.min, children: [
                  //       Icon(Symbols.image, size: 96.0, weight: 100.0, color: Theme.of(context).colorScheme.secondary),
                  //       const SizedBox(height: 24.0),
                  //       Text(AppLocalizations.of(context)!.loading, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.secondary)),
                  //     ])),
                  //     errorWidget: (context, url, error) => Center(
                  //         child: Column(mainAxisSize: MainAxisSize.min, children: [
                  //       Icon(Symbols.error, size: 96.0, weight: 100.0, color: Theme.of(context).colorScheme.error),
                  //       const SizedBox(height: 24.0),
                  //       Text(AppLocalizations.of(context)!.oops, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.error)),
                  //     ])),
                  //   )),
                  Image.asset('assets/images/129556606_733184203968252_3348110572651124073_n.jpg'),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40.0,
                          backgroundImage: queryUsersInfo.when(
                            data: (data) => data.model.exact.first.profile_uri == null ? null : CachedNetworkImageProvider('$cdnDomainName/${data.model.exact.first.profile_uri}'),
                            error: (Object error, StackTrace stackTrace) => null,
                            loading: () => null,
                          ),
                          child: queryUsersInfo.when(
                            data: (data) => data.model.exact.first.profile_uri == null ? Text(data.model.exact.first.name.substring(0, 3)) : null,
                            error: (Object error, StackTrace stackTrace) => null,
                            loading: () => null,
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                            child: Text(
                          data.model.exact.first.name,
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.secondary),
                        )),
                        const SizedBox(width: 16.0),
                        IconButton(
                          icon: const Icon(Icons.chat_outlined),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.favorite_border_outlined),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.bookmark_border_outlined),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Card.filled(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            child: Container(
                              constraints: BoxConstraints(minHeight: 108.0),
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  FittedBox(child: Text('1000', style: Theme.of(context).textTheme.titleLarge)),
                                  const SizedBox(height: 24.0),
                                  Text('Total assets', style: Theme.of(context).textTheme.labelSmall),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card.filled(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            child: Container(
                              constraints: BoxConstraints(minHeight: 108.0),
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  FittedBox(child: Text('10000000000', style: Theme.of(context).textTheme.titleLarge)),
                                  const SizedBox(height: 24.0),
                                  Text('Total assets', style: Theme.of(context).textTheme.labelSmall),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card.filled(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            child: Container(
                              constraints: BoxConstraints(minHeight: 108.0),
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  FittedBox(child: Text('10', style: Theme.of(context).textTheme.titleLarge)),
                                  const SizedBox(height: 24.0),
                                  Text('Total assets', style: Theme.of(context).textTheme.labelSmall),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${AppLocalizations.of(context)!.details}:  ', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant)),
                        Expanded(child: Text(data.model.exact.first.information ?? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.secondary))),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${AppLocalizations.of(context)!.details}:  ', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant)),
                        Expanded(child: Text(data.model.exact.first.information ?? '7 years ago', style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.secondary))),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      AppLocalizations.of(context)!.highlights,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                    ),
                  ),
                  const SizedBox(height: 4.0),
                ],
              ),
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
