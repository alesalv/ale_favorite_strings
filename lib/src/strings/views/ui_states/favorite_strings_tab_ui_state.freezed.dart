// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_strings_tab_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteStringsTabUiState {
  List<FavoriteStringTabUiState> get favorite =>
      throw _privateConstructorUsedError;
  String get unfavoritedTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStringsTabUiStateCopyWith<FavoriteStringsTabUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStringsTabUiStateCopyWith<$Res> {
  factory $FavoriteStringsTabUiStateCopyWith(FavoriteStringsTabUiState value,
          $Res Function(FavoriteStringsTabUiState) then) =
      _$FavoriteStringsTabUiStateCopyWithImpl<$Res, FavoriteStringsTabUiState>;
  @useResult
  $Res call({List<FavoriteStringTabUiState> favorite, String unfavoritedTitle});
}

/// @nodoc
class _$FavoriteStringsTabUiStateCopyWithImpl<$Res,
        $Val extends FavoriteStringsTabUiState>
    implements $FavoriteStringsTabUiStateCopyWith<$Res> {
  _$FavoriteStringsTabUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorite = null,
    Object? unfavoritedTitle = null,
  }) {
    return _then(_value.copyWith(
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<FavoriteStringTabUiState>,
      unfavoritedTitle: null == unfavoritedTitle
          ? _value.unfavoritedTitle
          : unfavoritedTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteStringsTabUiStateCopyWith<$Res>
    implements $FavoriteStringsTabUiStateCopyWith<$Res> {
  factory _$$_FavoriteStringsTabUiStateCopyWith(
          _$_FavoriteStringsTabUiState value,
          $Res Function(_$_FavoriteStringsTabUiState) then) =
      __$$_FavoriteStringsTabUiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FavoriteStringTabUiState> favorite, String unfavoritedTitle});
}

/// @nodoc
class __$$_FavoriteStringsTabUiStateCopyWithImpl<$Res>
    extends _$FavoriteStringsTabUiStateCopyWithImpl<$Res,
        _$_FavoriteStringsTabUiState>
    implements _$$_FavoriteStringsTabUiStateCopyWith<$Res> {
  __$$_FavoriteStringsTabUiStateCopyWithImpl(
      _$_FavoriteStringsTabUiState _value,
      $Res Function(_$_FavoriteStringsTabUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorite = null,
    Object? unfavoritedTitle = null,
  }) {
    return _then(_$_FavoriteStringsTabUiState(
      favorite: null == favorite
          ? _value._favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<FavoriteStringTabUiState>,
      unfavoritedTitle: null == unfavoritedTitle
          ? _value.unfavoritedTitle
          : unfavoritedTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FavoriteStringsTabUiState
    with DiagnosticableTreeMixin
    implements _FavoriteStringsTabUiState {
  const _$_FavoriteStringsTabUiState(
      {final List<FavoriteStringTabUiState> favorite = const [],
      this.unfavoritedTitle = ''})
      : _favorite = favorite;

  final List<FavoriteStringTabUiState> _favorite;
  @override
  @JsonKey()
  List<FavoriteStringTabUiState> get favorite {
    if (_favorite is EqualUnmodifiableListView) return _favorite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorite);
  }

  @override
  @JsonKey()
  final String unfavoritedTitle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoriteStringsTabUiState(favorite: $favorite, unfavoritedTitle: $unfavoritedTitle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoriteStringsTabUiState'))
      ..add(DiagnosticsProperty('favorite', favorite))
      ..add(DiagnosticsProperty('unfavoritedTitle', unfavoritedTitle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteStringsTabUiState &&
            const DeepCollectionEquality().equals(other._favorite, _favorite) &&
            (identical(other.unfavoritedTitle, unfavoritedTitle) ||
                other.unfavoritedTitle == unfavoritedTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_favorite), unfavoritedTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteStringsTabUiStateCopyWith<_$_FavoriteStringsTabUiState>
      get copyWith => __$$_FavoriteStringsTabUiStateCopyWithImpl<
          _$_FavoriteStringsTabUiState>(this, _$identity);
}

abstract class _FavoriteStringsTabUiState implements FavoriteStringsTabUiState {
  const factory _FavoriteStringsTabUiState(
      {final List<FavoriteStringTabUiState> favorite,
      final String unfavoritedTitle}) = _$_FavoriteStringsTabUiState;

  @override
  List<FavoriteStringTabUiState> get favorite;
  @override
  String get unfavoritedTitle;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteStringsTabUiStateCopyWith<_$_FavoriteStringsTabUiState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteStringTabUiState {
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStringTabUiStateCopyWith<FavoriteStringTabUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStringTabUiStateCopyWith<$Res> {
  factory $FavoriteStringTabUiStateCopyWith(FavoriteStringTabUiState value,
          $Res Function(FavoriteStringTabUiState) then) =
      _$FavoriteStringTabUiStateCopyWithImpl<$Res, FavoriteStringTabUiState>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$FavoriteStringTabUiStateCopyWithImpl<$Res,
        $Val extends FavoriteStringTabUiState>
    implements $FavoriteStringTabUiStateCopyWith<$Res> {
  _$FavoriteStringTabUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteStringTabUiStateCopyWith<$Res>
    implements $FavoriteStringTabUiStateCopyWith<$Res> {
  factory _$$_FavoriteStringTabUiStateCopyWith(
          _$_FavoriteStringTabUiState value,
          $Res Function(_$_FavoriteStringTabUiState) then) =
      __$$_FavoriteStringTabUiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_FavoriteStringTabUiStateCopyWithImpl<$Res>
    extends _$FavoriteStringTabUiStateCopyWithImpl<$Res,
        _$_FavoriteStringTabUiState>
    implements _$$_FavoriteStringTabUiStateCopyWith<$Res> {
  __$$_FavoriteStringTabUiStateCopyWithImpl(_$_FavoriteStringTabUiState _value,
      $Res Function(_$_FavoriteStringTabUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_FavoriteStringTabUiState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FavoriteStringTabUiState
    with DiagnosticableTreeMixin
    implements _FavoriteStringTabUiState {
  const _$_FavoriteStringTabUiState({this.title = ''});

  @override
  @JsonKey()
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoriteStringTabUiState(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoriteStringTabUiState'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteStringTabUiState &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteStringTabUiStateCopyWith<_$_FavoriteStringTabUiState>
      get copyWith => __$$_FavoriteStringTabUiStateCopyWithImpl<
          _$_FavoriteStringTabUiState>(this, _$identity);
}

abstract class _FavoriteStringTabUiState implements FavoriteStringTabUiState {
  const factory _FavoriteStringTabUiState({final String title}) =
      _$_FavoriteStringTabUiState;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteStringTabUiStateCopyWith<_$_FavoriteStringTabUiState>
      get copyWith => throw _privateConstructorUsedError;
}
