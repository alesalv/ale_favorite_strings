import 'package:ale_favorite_strings/src/strings/controllers/all_strings_tab_controller.dart';
import 'package:ale_favorite_strings/src/strings/views/widgets/string_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllStringsTab extends ConsumerWidget {
  const AllStringsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // note: for this code sample I avoid error and loading handling
    final all =
        ref.watch(allStringsTabControllerProvider.select((c) => c.state.all));
    return all.isEmpty
        ? const Center(
            child: Text('Sorry, no strings'),
          )
        : ListView(
            children: all
                .map((s) => StringListItem(
                      name: s.title,
                      isFavorite: s.isFavorite,
                      onTap: () => ref
                          .read(allStringsTabControllerProvider)
                          .favor(s.title, !s.isFavorite),
                    ))
                .toList(),
          );
  }
}
