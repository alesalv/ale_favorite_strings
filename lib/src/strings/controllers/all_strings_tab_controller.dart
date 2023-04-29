import 'dart:async';

import 'package:ale_favorite_strings/src/core/views/widgets/unfavorited_consumable.dart';
import 'package:ale_favorite_strings/src/strings/models/repositories/favoritable_strings_repository.dart';
import 'package:ale_favorite_strings/src/strings/views/ui_states/all_strings_tab_ui_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/data/favoritable_string.dart';

class AllStringsTabController extends ChangeNotifier
    with UnfavoritedConsumable {
  AllStringsTabController(this._repository) {
    _subscription = _repository.watch().listen(_onFavoritables);
    // init
    _onFavoritables(_repository.read());
  }
  final FavoritableStringsRepository _repository;
  late final StreamSubscription<List<FavoritableString>> _subscription;

  AllStringsTabUiState _state = const AllStringsTabUiState();
  AllStringsTabUiState get state => _state;

  String _unfavoritedTitle = '';

  void favor(String title, bool fav) {
    if (!fav) {
      _unfavoritedTitle = title;
    }
    _repository.update(title, fav);
  }

  @override
  String get unfavoritedTitle => _state.unfavoritedTitle;

  @override
  void consumeTitle() {
    _unfavoritedTitle = '';
    _state = _state.copyWith(unfavoritedTitle: _unfavoritedTitle);
    notifyListeners();
  }

  @override
  void undo(String title) {
    _repository.update(title, true);
  }

  @override
  void dispose() {
    unawaited(_subscription.cancel());
    _repository.dispose();
    super.dispose();
  }

  void _onFavoritables(List<FavoritableString> strings) {
    _state = _state.copyWith(
      all: strings.map((s) => StringUiState.fromFavoritableString(s)).toList(),
      unfavoritedTitle: _unfavoritedTitle,
    );
    notifyListeners();
  }
}

final allStringsTabControllerProvider = ChangeNotifierProvider((ref) {
  final repo = ref.read(favoritableStringsRepositoryProvider);
  return AllStringsTabController(repo);
});
