import 'dart:async';

import 'package:ale_favorite_strings/src/strings/models/data/favoritable_string.dart';
import 'package:ale_favorite_strings/src/strings/models/data_sources/favoritable_strings_local_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritableStringsRepository {
  FavoritableStringsRepository(this._local);

  final FavoritableStringsLocalDataSource _local;
  final _streamController =
      StreamController<List<FavoritableString>>.broadcast(sync: true);

  Stream<List<FavoritableString>> watch() {
    return _streamController.stream;
  }

  List<FavoritableString> read() {
    return _local.read();
  }

  void update(String title, bool fav) {
    _local.update(title, fav);
    final persisted = _local.read();
    _streamController.add(persisted);
  }

  void dispose() {
    if (!_streamController.hasListener) {
      unawaited(_streamController.close());
    }
  }
}

final favoritableStringsRepositoryProvider = Provider(
    (_) => FavoritableStringsRepository(FavoritableStringsLocalDataSource()));
