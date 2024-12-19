import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HelpAndSupportDrawer extends HookConsumerWidget {
  const HelpAndSupportDrawer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'About us',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Develop by',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'version',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'contact us',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'tern and condition',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'follow us',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'report bug',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'rate us',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'ชี้แนะ ติชม',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Term Legal Condition Agreement',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
