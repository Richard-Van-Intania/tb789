import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../constants.dart';
import '../initialize.dart';
import '../provider/profile_providers.dart';

class HomeTab extends StatefulHookConsumerWidget {
  const HomeTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeTabState();
}

class _HomeTabState extends ConsumerState<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final fetchProfile = ref.watch(fetchProfileProvider);
    final primary = Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.primary);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
          child: GestureDetector(
            child: CircleAvatar(
              backgroundImage: fetchProfile.when(
                data: (data) => data.model.profile_uri == null ? null : CachedNetworkImageProvider('$cdnDomainName/${data.model.profile_uri}'),
                error: (Object error, StackTrace stackTrace) => null,
                loading: () => null,
              ),
              child: fetchProfile.when(
                data: (data) => data.model.profile_uri == null ? Text(data.model.name.substring(0, 3)) : null,
                error: (Object error, StackTrace stackTrace) => null,
                loading: () => null,
              ),
            ),
            onTap: () {
              context.go('/your_store_drawer');
            },
          ),
        ),
        title: Text(fetchProfile.when(
          data: (data) => data.model.name,
          error: (Object error, StackTrace stackTrace) => AppLocalizations.of(context)!.error,
          loading: () => AppLocalizations.of(context)!.loading,
        )),
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
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.highlights,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            const SizedBox(height: 4.0),
            if (width < breakPoint) ...[
              Card(
                color: Theme.of(context).colorScheme.onInverseSurface,
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/home/Group 13.png'),
                      const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: FittedBox(child: Text('ทะเบียนกราฟฟิค กรุงเทพ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.primary))),
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                  onTap: () {
                    context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                      'name': 'ทะเบียนกราฟฟิค กรุงเทพ',
                      'path': '/query_plates_type_province',
                      'pattern': nullAliasString,
                      'plates_type_id': PlatesType.platesType4.plates_type_id.toString(),
                      'province_id': Province.province1.province_id.toString(),
                      'vehicle_type_id': nullAliasInt.toString(),
                      'limit': 1000.toString(),
                      'offset': 0.toString(),
                    }).toString());
                  },
                ),
              ),
              const SizedBox(height: 16.0),
              Card(
                color: Theme.of(context).colorScheme.onInverseSurface,
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/home/Group 14.png'),
                      const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: FittedBox(child: Text('ทะเบียนหมวดเก่า กรุงเทพ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.primary))),
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                  onTap: () {
                    context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                      'name': 'ทะเบียนหมวดเก่า กรุงเทพ',
                      'path': '/query_plates_type_province',
                      'pattern': nullAliasString,
                      'plates_type_id': PlatesType.platesType1.plates_type_id.toString(),
                      'province_id': Province.province1.province_id.toString(),
                      'vehicle_type_id': nullAliasInt.toString(),
                      'limit': 1000.toString(),
                      'offset': 0.toString(),
                    }).toString());
                  },
                ),
              ),
              const SizedBox(height: 16.0),
              Card(
                color: Theme.of(context).colorScheme.onInverseSurface,
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/home/Group 15.png'),
                      const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: FittedBox(child: Text('ทะเบียนหมวดอักษรพิเศษ กรุงเทพ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.primary))),
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                  onTap: () {
                    context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                      'name': 'ทะเบียนหมวดอักษรพิเศษ กรุงเทพ',
                      'path': '/query_special_front',
                      'pattern': nullAliasString,
                      'plates_type_id': nullAliasInt.toString(),
                      'province_id': nullAliasInt.toString(),
                      'vehicle_type_id': nullAliasInt.toString(),
                      'limit': 1000.toString(),
                      'offset': 0.toString(),
                    }).toString());
                  },
                ),
              ),
              const SizedBox(height: 16.0),
              Card(
                color: Theme.of(context).colorScheme.onInverseSurface,
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/home/Group 16.png'),
                      const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: FittedBox(child: Text('ทะเบียนหมวดระฆังทอง กรุงเทพ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.primary))),
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                  onTap: () {
                    context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                      'name': 'ทะเบียนหมวดระฆังทอง กรุงเทพ',
                      'path': '/query_plates_type_province',
                      'pattern': nullAliasString,
                      'plates_type_id': PlatesType.platesType5.plates_type_id.toString(),
                      'province_id': Province.province1.province_id.toString(),
                      'vehicle_type_id': nullAliasInt.toString(),
                      'limit': 1000.toString(),
                      'offset': 0.toString(),
                    }).toString());
                  },
                ),
              ),
            ] else ...[
              Wrap(
                runSpacing: 16.0,
                children: [
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 344.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 13.png'),
                            const SizedBox(height: 16.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนกราฟฟิค กรุงเทพ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 16.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนกราฟฟิค กรุงเทพ',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType4.plates_type_id.toString(),
                          'province_id': Province.province1.province_id.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 344.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 14.png'),
                            const SizedBox(height: 16.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวดเก่า กรุงเทพ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 16.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนหมวดเก่า กรุงเทพ',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType1.plates_type_id.toString(),
                          'province_id': Province.province1.province_id.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 344.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 15.png'),
                            const SizedBox(height: 16.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวดอักษรพิเศษ กรุงเทพ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 16.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนหมวดอักษรพิเศษ กรุงเทพ',
                          'path': '/query_special_front',
                          'pattern': nullAliasString,
                          'plates_type_id': nullAliasInt.toString(),
                          'province_id': nullAliasInt.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 344.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 16.png'),
                            const SizedBox(height: 16.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวดระฆังทอง กรุงเทพ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 16.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนหมวดระฆังทอง กรุงเทพ',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType5.plates_type_id.toString(),
                          'province_id': Province.province1.province_id.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                ],
              ),
            ],
            const SizedBox(height: 48.0),
            Text(
              AppLocalizations.of(context)!.patterns,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            const SizedBox(height: 4.0),
            if (width < breakPoint) ...[
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 18.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนกราฟฟิค ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนกราฟฟิค ต่างจังหวัด',
                            'path': '/query_plates_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': PlatesType.platesType4.plates_type_id.toString(),
                            'province_id': '0',
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 19.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวดเก่า ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนหมวดเก่า ต่างจังหวัด',
                            'path': '/query_plates_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': PlatesType.platesType1.plates_type_id.toString(),
                            'province_id': '0',
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 17.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนกราฟฟิครถตู้ กรุงเทพ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนกราฟฟิครถตู้ กรุงเทพ',
                            'path': '/query_plates_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': PlatesType.platesType8.plates_type_id.toString(),
                            'province_id': Province.province1.province_id.toString(),
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 20.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถตู้ กรุงเทพ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนรถตู้ กรุงเทพ',
                            'path': '/query_plates_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': PlatesType.platesType3.plates_type_id.toString(),
                            'province_id': Province.province1.province_id.toString(),
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 30.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนกราฟฟิครถตู้ ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนกราฟฟิครถตู้ ต่างจังหวัด',
                            'path': '/query_plates_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': PlatesType.platesType8.plates_type_id.toString(),
                            'province_id': '0',
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 31.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถตู้ ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนรถตู้ ต่างจังหวัด',
                            'path': '/query_plates_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': PlatesType.platesType3.plates_type_id.toString(),
                            'province_id': '0',
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 27.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนกราฟฟิครถกระบะ กรุงเทพ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนกราฟฟิครถกระบะ กรุงเทพ',
                            'path': '/query_plates_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': PlatesType.platesType7.plates_type_id.toString(),
                            'province_id': Province.province1.province_id.toString(),
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 21.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถกระบะ กรุงเทพ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนรถกระบะ กรุงเทพ',
                            'path': '/query_plates_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': PlatesType.platesType2.plates_type_id.toString(),
                            'province_id': Province.province1.province_id.toString(),
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 28.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนกราฟฟิครถกระบะ ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนกราฟฟิครถกระบะ ต่างจังหวัด',
                            'path': '/query_plates_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': PlatesType.platesType7.plates_type_id.toString(),
                            'province_id': '0',
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 26.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถกระบะ ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนรถกระบะ ต่างจังหวัด',
                            'path': '/query_plates_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': PlatesType.platesType2.plates_type_id.toString(),
                            'province_id': '0',
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 33.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวด กก', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนหมวด กก',
                            'path': '/query_pattern',
                            'pattern': 'pattern_korkai_korkai',
                            'plates_type_id': nullAliasInt.toString(),
                            'province_id': nullAliasInt.toString(),
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 22.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวด กบ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนหมวด กบ',
                            'path': '/query_pattern',
                            'pattern': 'pattern_kob',
                            'plates_type_id': nullAliasInt.toString(),
                            'province_id': nullAliasInt.toString(),
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 23.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวด ฆx', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนหมวด ฆx',
                            'path': '/query_pattern',
                            'pattern': 'pattern_rakhang',
                            'plates_type_id': nullAliasInt.toString(),
                            'province_id': nullAliasInt.toString(),
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 24.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวด ฐx', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนหมวด ฐx',
                            'path': '/query_pattern',
                            'pattern': 'pattern_torthan',
                            'plates_type_id': nullAliasInt.toString(),
                            'province_id': nullAliasInt.toString(),
                            'vehicle_type_id': nullAliasInt.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 25.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถมอเตอร์ไซค์ กรุงเทพ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนรถมอเตอร์ไซค์ กรุงเทพ',
                            'path': '/query_vehicle_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': nullAliasInt.toString(),
                            'province_id': Province.province1.province_id.toString(),
                            'vehicle_type_id': VehicleType.vehicleType12.vehicle_type_id.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 29.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถมอเตอร์ไซค์ ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                        onTap: () {
                          context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                            'name': 'ทะเบียนรถมอเตอร์ไซค์ ต่างจังหวัด',
                            'path': '/query_vehicle_type_province',
                            'pattern': nullAliasString,
                            'plates_type_id': nullAliasInt.toString(),
                            'province_id': '0',
                            'vehicle_type_id': VehicleType.vehicleType12.vehicle_type_id.toString(),
                            'limit': 1000.toString(),
                            'offset': 0.toString(),
                          }).toString());
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ] else ...[
              Wrap(
                runSpacing: 16.0,
                children: [
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 18.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนกราฟฟิค ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนกราฟฟิค ต่างจังหวัด',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType4.plates_type_id.toString(),
                          'province_id': '0',
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 19.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวดเก่า ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนหมวดเก่า ต่างจังหวัด',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType1.plates_type_id.toString(),
                          'province_id': '0',
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 17.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนกราฟฟิครถตู้ กรุงเทพ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนกราฟฟิครถตู้ กรุงเทพ',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType8.plates_type_id.toString(),
                          'province_id': Province.province1.province_id.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 20.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถตู้ กรุงเทพ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนรถตู้ กรุงเทพ',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType3.plates_type_id.toString(),
                          'province_id': Province.province1.province_id.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 30.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนกราฟฟิครถตู้ ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนกราฟฟิครถตู้ ต่างจังหวัด',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType8.plates_type_id.toString(),
                          'province_id': '0',
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 31.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถตู้ ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนรถตู้ ต่างจังหวัด',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType3.plates_type_id.toString(),
                          'province_id': '0',
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 27.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนกราฟฟิครถกระบะ กรุงเทพ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนกราฟฟิครถกระบะ กรุงเทพ',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType7.plates_type_id.toString(),
                          'province_id': Province.province1.province_id.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 21.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถกระบะ กรุงเทพ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนรถกระบะ กรุงเทพ',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType2.plates_type_id.toString(),
                          'province_id': Province.province1.province_id.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 28.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนกราฟฟิครถกระบะ ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนกราฟฟิครถกระบะ ต่างจังหวัด',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType7.plates_type_id.toString(),
                          'province_id': '0',
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 26.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถกระบะ ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนรถกระบะ ต่างจังหวัด',
                          'path': '/query_plates_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': PlatesType.platesType2.plates_type_id.toString(),
                          'province_id': '0',
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 22.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวด กก', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนหมวด กก',
                          'path': '/query_pattern',
                          'pattern': 'pattern_korkai_korkai',
                          'plates_type_id': nullAliasInt.toString(),
                          'province_id': nullAliasInt.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 22.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวด กบ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนหมวด กบ',
                          'path': '/query_pattern',
                          'pattern': 'pattern_kob',
                          'plates_type_id': nullAliasInt.toString(),
                          'province_id': nullAliasInt.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 24.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวด ฆx', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนหมวด ฆx',
                          'path': '/query_pattern',
                          'pattern': 'pattern_rakhang',
                          'plates_type_id': nullAliasInt.toString(),
                          'province_id': nullAliasInt.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 24.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนหมวด ฐx', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนหมวด ฐx',
                          'path': '/query_pattern',
                          'pattern': 'pattern_torthan',
                          'plates_type_id': nullAliasInt.toString(),
                          'province_id': nullAliasInt.toString(),
                          'vehicle_type_id': nullAliasInt.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 25.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถมอเตอร์ไซค์ กรุงเทพ', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนรถมอเตอร์ไซค์ กรุงเทพ',
                          'path': '/query_vehicle_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': nullAliasInt.toString(),
                          'province_id': Province.province1.province_id.toString(),
                          'vehicle_type_id': VehicleType.vehicleType12.vehicle_type_id.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                  Card(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 224.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/home/Group 29.png'),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                              child: FittedBox(child: Text('ทะเบียนรถมอเตอร์ไซค์ ต่างจังหวัด', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.primary))),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      onTap: () {
                        context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                          'name': 'ทะเบียนรถมอเตอร์ไซค์ ต่างจังหวัด',
                          'path': '/query_vehicle_type_province',
                          'pattern': nullAliasString,
                          'plates_type_id': nullAliasInt.toString(),
                          'province_id': '0',
                          'vehicle_type_id': VehicleType.vehicleType12.vehicle_type_id.toString(),
                          'limit': 1000.toString(),
                          'offset': 0.toString(),
                        }).toString());
                      },
                    ),
                  ),
                ],
              ),
            ],
            const SizedBox(height: 48.0),
            Text(
              AppLocalizations.of(context)!.lucky_number,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            const SizedBox(height: 4.0),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'x',
                    'path': '/query_pattern',
                    'pattern': 'pattern_x',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('x', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'xx',
                    'path': '/query_pattern',
                    'pattern': 'pattern_xx',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('xx', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'xxx',
                    'path': '/query_pattern',
                    'pattern': 'pattern_xxx',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('xxx', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'xxxx',
                    'path': '/query_pattern',
                    'pattern': 'pattern_xxxx',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('xxxx', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'xy',
                    'path': '/query_pattern',
                    'pattern': 'pattern_xy',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('xy', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'xyy',
                    'path': '/query_pattern',
                    'pattern': 'pattern_xyy',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('xyy', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'xyyy',
                    'path': '/query_pattern',
                    'pattern': 'pattern_xyyy',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('xyyy', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'xxyy',
                    'path': '/query_pattern',
                    'pattern': 'pattern_xxyy',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('xxyy', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'xyxy',
                    'path': '/query_pattern',
                    'pattern': 'pattern_xyxy',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('xyxy', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'xyyx',
                    'path': '/query_pattern',
                    'pattern': 'pattern_xyyx',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('xyyx', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'xyx',
                    'path': '/query_pattern',
                    'pattern': 'pattern_xyx',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('xyx', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'xyz',
                    'path': '/query_pattern',
                    'pattern': 'pattern_xyz',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('xyz', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'zyx',
                    'path': '/query_pattern',
                    'pattern': 'pattern_zyx',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('zyx', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'wxyz',
                    'path': '/query_pattern',
                    'pattern': 'pattern_wxyz',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('wxyz', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'zyxw',
                    'path': '/query_pattern',
                    'pattern': 'pattern_zyxw',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('zyxw', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'x00',
                    'path': '/query_pattern',
                    'pattern': 'pattern_x00',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('x00', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'x000',
                    'path': '/query_pattern',
                    'pattern': 'pattern_x000',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('x000', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'x99',
                    'path': '/query_pattern',
                    'pattern': 'pattern_x99',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('x99', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'x999',
                    'path': '/query_pattern',
                    'pattern': 'pattern_x999',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('x999', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'x55',
                    'path': '/query_pattern',
                    'pattern': 'pattern_x55',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('x55', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': 'x555',
                    'path': '/query_pattern',
                    'pattern': 'pattern_x555',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('x555', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '168',
                    'path': '/query_pattern',
                    'pattern': 'pattern_168',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('168', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '789',
                    'path': '/query_pattern',
                    'pattern': 'pattern_789',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('789', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '289',
                    'path': '/query_pattern',
                    'pattern': 'pattern_289',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('289', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '456',
                    'path': '/query_pattern',
                    'pattern': 'pattern_456',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('456', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '911',
                    'path': '/query_pattern',
                    'pattern': 'pattern_911',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('911', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '718',
                    'path': '/query_pattern',
                    'pattern': 'pattern_718',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('718', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '992',
                    'path': '/query_pattern',
                    'pattern': 'pattern_992',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('992', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '35',
                    'path': '/query_pattern',
                    'pattern': 'pattern_35',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('35', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '488',
                    'path': '/query_pattern',
                    'pattern': 'pattern_488',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('488', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '9',
                    'path': '/query_pattern',
                    'pattern': 'pattern_9',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('9', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '99',
                    'path': '/query_pattern',
                    'pattern': 'pattern_99',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('99', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '999',
                    'path': '/query_pattern',
                    'pattern': 'pattern_999',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('999', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '9999',
                    'path': '/query_pattern',
                    'pattern': 'pattern_9999',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('9999', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '7',
                    'path': '/query_pattern',
                    'pattern': 'pattern_7',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('7', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '77',
                    'path': '/query_pattern',
                    'pattern': 'pattern_77',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('77', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '777',
                    'path': '/query_pattern',
                    'pattern': 'pattern_777',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('777', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '7777',
                    'path': '/query_pattern',
                    'pattern': 'pattern_7777',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('7777', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '5',
                    'path': '/query_pattern',
                    'pattern': 'pattern_5',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('5', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '55',
                    'path': '/query_pattern',
                    'pattern': 'pattern_55',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('55', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '555',
                    'path': '/query_pattern',
                    'pattern': 'pattern_555',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('555', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '5555',
                    'path': '/query_pattern',
                    'pattern': 'pattern_5555',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('5555', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '8',
                    'path': '/query_pattern',
                    'pattern': 'pattern_8',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('8', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '88',
                    'path': '/query_pattern',
                    'pattern': 'pattern_88',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('88', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '888',
                    'path': '/query_pattern',
                    'pattern': 'pattern_888',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('888', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '8888',
                    'path': '/query_pattern',
                    'pattern': 'pattern_8888',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('8888', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '1',
                    'path': '/query_pattern',
                    'pattern': 'pattern_1',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('1', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '599',
                    'path': '/query_pattern',
                    'pattern': 'pattern_599',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('599', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '595',
                    'path': '/query_pattern',
                    'pattern': 'pattern_595',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('595', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '959',
                    'path': '/query_pattern',
                    'pattern': 'pattern_959',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('959', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '955',
                    'path': '/query_pattern',
                    'pattern': 'pattern_955',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('955', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '5959',
                    'path': '/query_pattern',
                    'pattern': 'pattern_5959',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('5959', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '9595',
                    'path': '/query_pattern',
                    'pattern': 'pattern_9595',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('9595', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '5599',
                    'path': '/query_pattern',
                    'pattern': 'pattern_5599',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('5599', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '9955',
                    'path': '/query_pattern',
                    'pattern': 'pattern_9955',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('9955', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '5995',
                    'path': '/query_pattern',
                    'pattern': 'pattern_5995',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('5995', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
            const Divider(),
            TextButton(
                onPressed: () {
                  context.go(Uri(path: '/pattern_details_screen', queryParameters: {
                    'name': '9559',
                    'path': '/query_pattern',
                    'pattern': 'pattern_9559',
                    'plates_type_id': nullAliasInt.toString(),
                    'province_id': nullAliasInt.toString(),
                    'vehicle_type_id': nullAliasInt.toString(),
                    'limit': 1000.toString(),
                    'offset': 0.toString(),
                  }).toString());
                },
                child: Row(
                  children: [Text('9559', style: primary), const Spacer(), const Icon(Icons.navigate_next_outlined)],
                )),
          ],
        ),
      )),
    );
  }
}
