import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../initialize.dart';
import '../provider/settings_providers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsDrawer extends HookConsumerWidget {
  const SettingsDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Locale locale = ref.watch(updateLocaleProvider);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              RadioListTile<Locale>(
                title: Text(AppLocalizations.of(context)!.thai),
                value: th,
                groupValue: locale,
                onChanged: (Locale? value) {
                  if (value != null) {
                    ref.read(updateLocaleProvider.notifier).update(value);
                  }
                },
              ),
              RadioListTile<Locale>(
                title: Text(AppLocalizations.of(context)!.english),
                value: en,
                groupValue: locale,
                onChanged: (Locale? value) {
                  if (value != null) {
                    ref.read(updateLocaleProvider.notifier).update(value);
                  }
                },
              ),
              Switch(
                value: Theme.of(context).brightness == Brightness.dark,
                onChanged: (bool newValue) => ref.read(updateThemeModeProvider.notifier).update(newValue ? ThemeMode.dark : ThemeMode.light),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
