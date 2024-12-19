import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ErrorScreen extends HookConsumerWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(Symbols.error, size: 96.0, weight: 100.0, color: Theme.of(context).colorScheme.error),
        const SizedBox(height: 24.0),
        Text(AppLocalizations.of(context)!.oops, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.error)),
        const SizedBox(height: 48.0),
        TextButton(
            onPressed: () {
              context.go('/');
            },
            child: Text(AppLocalizations.of(context)!.home))
      ])),
    );
  }
}
