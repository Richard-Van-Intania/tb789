import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LikedDrawer extends HookConsumerWidget {
  const LikedDrawer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'LikedDrawer',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
