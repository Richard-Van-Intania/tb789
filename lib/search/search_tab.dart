import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchTab extends HookConsumerWidget {
  const SearchTab({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
            return IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () {
                controller.openView();
              },
            );
          },
          suggestionsBuilder: (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(5, (int index) {
              final String item = 'item $index';
              return ListTile(
                title: Text(item),
                onTap: () {
                  // setState(() {
                  //   controller.closeView(item);
                  // });
                  controller.closeView(item);
                },
              );
            });
          },
        ),
        title: Text(AppLocalizations.of(context)!.search),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_search_outlined),
            onPressed: () {
              //
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_alt_outlined),
            onPressed: () {
              context.push('/plates_filter_screen');
            },
          ),
        ],
      ),
    );
  }
}
