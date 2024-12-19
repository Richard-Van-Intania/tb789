import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransferDrawer extends StatefulHookConsumerWidget {
  const TransferDrawer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TransferDrawerState();
}

class _TransferDrawerState extends ConsumerState<TransferDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'TransferDrawer',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }
}
