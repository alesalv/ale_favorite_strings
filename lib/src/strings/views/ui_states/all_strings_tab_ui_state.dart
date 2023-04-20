// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/data/favoritable_string.dart';

part 'all_strings_tab_ui_state.freezed.dart';

@freezed
class AllStringsTabUiState with _$AllStringsTabUiState {
  const factory AllStringsTabUiState({
    @Default([]) final List<StringUiState> all,
    // @Default(false) final bool isLoading,
    // @Default('') final String errorMsg,
  }) = _AllStringsTabUiState;
}

@freezed
class StringUiState with _$StringUiState {
  const factory StringUiState({
    @Default('') final String title,
    @Default(false) final bool isFavorite,
  }) = _StringUiState;

  factory StringUiState.fromFavoritableString(FavoritableString favoritable) =>
      StringUiState(
        title: favoritable.string,
        isFavorite: favoritable.isFavorite,
      );
}
