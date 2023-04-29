import 'dart:async';

import 'package:ale_favorite_strings/src/strings/models/repositories/favoritable_strings_repository.dart';
import 'package:ale_favorite_strings/src/strings/views/ui_states/favorite_strings_tab_ui_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/views/widgets/unfavorited_consumable.dart';
import '../models/data/favoritable_string.dart';

class FavoriteStringsTabController extends ChangeNotifier
    with UnfavoritedConsumable {
  FavoriteStringsTabController(this._repository) {
    _subscription = _repository.watch().listen(_onFavoritables);
    // init
    _onFavoritables(_repository.read());
  }
  final FavoritableStringsRepository _repository;
  late final StreamSubscription<List<FavoritableString>> _subscription;

  FavoriteStringsTabUiState _state = const FavoriteStringsTabUiState();
  FavoriteStringsTabUiState get state => _state;

  String _unfavoritedTitle = '';

  void favor(String title) {
    _unfavoritedTitle = title;
    _repository.update(title, false);
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
      favorite: strings
          .where((s) => s.isFavorite)
          .map((s) => FavoriteStringTabUiState.fromFavoritableString(s))
          .toList(),
      unfavoritedTitle: _unfavoritedTitle,
    );
    notifyListeners();
  }
}

final favoriteStringsTabControllerProvider = ChangeNotifierProvider((ref) {
  final repo = ref.read(favoritableStringsRepositoryProvider);
  return FavoriteStringsTabController(repo);
});
