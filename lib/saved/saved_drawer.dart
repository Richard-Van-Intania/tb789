import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SavedDrawer extends HookConsumerWidget {
  const SavedDrawer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TabController tabController = useTabController(initialLength: 2);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 4.0,
          bottom: TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(text: AppLocalizations.of(context)!.plates, icon: const Icon(Icons.pin_outlined)),
              Tab(text: AppLocalizations.of(context)!.store, icon: const Icon(Icons.store_outlined)),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const <Widget>[
            Center(
              child: Text('plates'),
            ),
            Center(
              child: Text('store'),
            ),
          ],
        ));
  }
}
