import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../provider/authentication_providers.dart';

class YouTab extends HookConsumerWidget {
  const YouTab({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(switch (navigationShell.currentIndex) {
      //     0 => AppLocalizations.of(context)!.your_store,
      //     1 => AppLocalizations.of(context)!.transfer_plates,
      //     2 => AppLocalizations.of(context)!.liked,
      //     3 => AppLocalizations.of(context)!.saved,
      //     4 => AppLocalizations.of(context)!.account,
      //     5 => AppLocalizations.of(context)!.settings,
      //     6 => AppLocalizations.of(context)!.help_and_support,
      //     _ => nullAliasString,
      //   }),
      // ),
      appBar: AppBar(
        title: Text(GoRouterState.of(context).uri.toString()),
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         if (context.canPop()) {
        //           context.pop();
        //         }
        //       },
        //       icon: const Icon(Icons.arrow_back_ios_outlined))
        // ],
      ),
      body: navigationShell,
      drawer: NavigationDrawer(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (int index) {
          navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
          Navigator.pop(context);
        },
        children: [
          DrawerHeader(
            child: Text('789plates', style: Theme.of(context).textTheme.displaySmall),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.store_outlined),
            selectedIcon: const Icon(Icons.store),
            label: Text(AppLocalizations.of(context)!.your_store),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.swap_horizontal_circle_outlined),
            selectedIcon: const Icon(Icons.swap_horizontal_circle),
            label: Text(AppLocalizations.of(context)!.transfer_plates),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.favorite_border_outlined),
            selectedIcon: const Icon(Icons.favorite_outlined),
            label: Text(AppLocalizations.of(context)!.liked),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.bookmark_border_outlined),
            selectedIcon: const Icon(Icons.bookmark_outlined),
            label: Text(AppLocalizations.of(context)!.saved),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.person_outlined),
            selectedIcon: const Icon(Icons.person),
            label: Text(AppLocalizations.of(context)!.account),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.settings_outlined),
            selectedIcon: const Icon(Icons.settings),
            label: Text(AppLocalizations.of(context)!.settings),
          ),
          NavigationDrawerDestination(
            icon: const Icon(Icons.help_center_outlined),
            selectedIcon: const Icon(Icons.help_center),
            label: Text(AppLocalizations.of(context)!.help_and_support),
          ),
          const Divider(indent: 28.0, endIndent: 28.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton.icon(
              onPressed: () {
                showDialog<bool>(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(AppLocalizations.of(context)!.soc),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: Text(AppLocalizations.of(context)!.cancel),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: Text(AppLocalizations.of(context)!.sign_out),
                      ),
                    ],
                  ),
                ).then((onValue) {
                  if (onValue != null && onValue) {
                    if (!context.mounted) return;
                    context.go('/');
                    ref.read(credentialProvider.notifier).deleteAll().then((onValue) {
                      ref.invalidate(autoSignInProvider);
                    });
                  }
                });
              },
              icon: const Icon(Icons.logout_outlined),
              label: Text(AppLocalizations.of(context)!.sign_out),
            ),
          )
        ],
      ),
    );
  }
}
