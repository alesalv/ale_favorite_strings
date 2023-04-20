import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controllers/favorite_strings_tab_controller.dart';
import '../widgets/string_list_item.dart';

class FavoriteStringsTab extends ConsumerWidget {
  const FavoriteStringsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // note: for this code sample I avoid error and loading handling
    final favorites = ref.watch(
        favoriteStringsTabControllerProvider.select((c) => c.state.favorite));

    return favorites.isEmpty
        ? const Center(
            child: Text('Sorry, no favorites'),
          )
        : ListView(
            children: favorites
                .map((s) => StringListItem(
                      name: s.title,
                      isFavorite: true,
                      onTap: () => ref
                          .read(favoriteStringsTabControllerProvider)
                          .favor(s.title),
                    ))
                .toList(),
          );
  }
}
