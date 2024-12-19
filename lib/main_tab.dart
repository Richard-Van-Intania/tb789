import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'initialize.dart';
import 'provider/authentication_providers.dart';
import 'provider/providers.dart';
import 'routes.dart';

class MainTab extends StatefulHookConsumerWidget {
  const MainTab({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainTabState();
}

class _MainTabState extends ConsumerState<MainTab> {
  @override
  void initState() {
    super.initState();
    ref.listenManual(autoRenewTokenProvider, (previous, next) {
      next.whenData((int statusCode) {
        if (statusCode == 200) {
          routeConfig.value = mainRoute;
        } else {
          routeConfig.value = signInRoute;
        }
      });
    });
    ref.listenManual(displaySnackBarProvider, (previous, next) {
      next.whenData((String message) {
        if (message.isNotEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), behavior: SnackBarBehavior.floating));
        }
      });
    });
    WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) async {
      for (var i = 0; i < 300; i++) {
        await Future.delayed(const Duration(minutes: 175));
        ref.invalidate(autoRenewTokenProvider);
        if (stopRenewToken) break;
      }
    });
  }

  @override
  void dispose() {
    stopRenewToken = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: widget.navigationShell.currentIndex,
        onDestinationSelected: (int index) {
          widget.navigationShell.goBranch(index, initialLocation: index == widget.navigationShell.currentIndex);
        },
        destinations: <Widget>[
          NavigationDestination(
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home),
            label: AppLocalizations.of(context)!.home,
          ),
          NavigationDestination(
            icon: const Icon(Icons.search_outlined),
            selectedIcon: const Icon(Icons.search),
            label: AppLocalizations.of(context)!.search,
          ),
          NavigationDestination(
            icon: const Icon(Icons.explore_outlined),
            selectedIcon: const Icon(Icons.explore),
            label: AppLocalizations.of(context)!.explore,
          ),
          NavigationDestination(
            icon: const Icon(Icons.chat_outlined),
            selectedIcon: const Icon(Icons.chat),
            label: AppLocalizations.of(context)!.chats,
          ),
          NavigationDestination(
            icon: const Icon(Icons.account_circle_outlined),
            selectedIcon: const Icon(Icons.account_circle),
            label: AppLocalizations.of(context)!.you,
          ),
        ],
      ),
    );
  }
}
