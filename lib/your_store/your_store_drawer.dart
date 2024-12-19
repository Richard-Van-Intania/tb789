import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../initialize.dart';
import '../provider/profile_providers.dart';
import 'select_province_screen.dart';

class YourStoreDrawer extends StatefulHookConsumerWidget {
  const YourStoreDrawer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _YourStoreDrawerState();
}

class _YourStoreDrawerState extends ConsumerState<YourStoreDrawer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final fetchProfile = ref.watch(fetchProfileProvider);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: fetchProfile.when(
            data: (data) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(data.model.name),
                  Text(data.model.email),
                ],
              ),
            ),
            error: (Object error, StackTrace stackTrace) => Text(AppLocalizations.of(context)!.oops, style: Theme.of(context).textTheme.titleLarge),
            loading: () => const CircularProgressIndicator(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            context.go('/your_store_drawer/select_province_screen');
          },
          label: Text(AppLocalizations.of(context)!.add_plates),
          icon: const Icon(Icons.add)),
    );
  }
}
