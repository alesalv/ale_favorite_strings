// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/data/favoritable_string.dart';

part 'favorite_strings_tab_ui_state.freezed.dart';

@freezed
class FavoriteStringsTabUiState with _$FavoriteStringsTabUiState {
  const factory FavoriteStringsTabUiState({
    @Default([]) final List<FavoriteStringTabUiState> favorite,
    // @Default(false) final bool isLoading,
    // @Default('') final String errorMsg,
  }) = _FavoriteStringsTabUiState;
}

@freezed
class FavoriteStringTabUiState with _$FavoriteStringTabUiState {
  const factory FavoriteStringTabUiState({
    @Default('') final String title,
  }) = _FavoriteStringTabUiState;

  factory FavoriteStringTabUiState.fromFavoritableString(
          FavoritableString favoritable) =>
      FavoriteStringTabUiState(
        title: favoritable.string,
      );
}
