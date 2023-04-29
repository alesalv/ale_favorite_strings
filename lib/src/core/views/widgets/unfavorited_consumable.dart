import 'package:flutter/foundation.dart';

/// UnfavoritedConsumable represents a change notifier which stores an
/// unfavorited title and is able to consume it, and also is able to undo the
/// unfavorited action
mixin UnfavoritedConsumable on ChangeNotifier {
  /// Returns the unfavorited title
  String get unfavoritedTitle;

  /// Consumes the title
  void consumeTitle();

  /// Undo the unfavorited action
  void undo(String title);
}
