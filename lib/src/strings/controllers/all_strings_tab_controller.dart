import 'dart:async';

import 'package:ale_favorite_strings/src/strings/models/repositories/favoritable_strings_repository.dart';
import 'package:ale_favorite_strings/src/strings/views/ui_states/all_strings_tab_ui_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/data/favoritable_string.dart';

class AllStringsTabController extends ChangeNotifier {
  AllStringsTabController(this._repository) {
    _subscription = _repository.watch().listen(_onFavoritables);
    // init
    _onFavoritables(_repository.read());
  }
  final FavoritableStringsRepository _repository;
  late final StreamSubscription<List<FavoritableString>> _subscription;

  AllStringsTabUiState _state = const AllStringsTabUiState();
  AllStringsTabUiState get state => _state;

  Future<void> favor(String title, bool fav) async {
    return _repository.update(title, fav);
  }

  @override
  void dispose() {
    unawaited(_subscription.cancel());
    _repository.dispose();
    super.dispose();
  }

  void _onFavoritables(List<FavoritableString> strings) {
    _state = _state.copyWith(
        all: strings
            .map((s) => StringUiState.fromFavoritableString(s))
            .toList());
    notifyListeners();
  }
}

final allStringsTabControllerProvider = ChangeNotifierProvider((ref) {
  final repo = ref.read(favoritableStringsRepositoryProvider);
  return AllStringsTabController(repo);
});
