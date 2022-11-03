// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharactersEvent {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default, {
    required TResult Function(String name, int currentPage) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name)? $default, {
    TResult? Function(String name, int currentPage)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function(String name, int currentPage)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CharactersEventSearch value) $default, {
    required TResult Function(CharactersEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CharactersEventSearch value)? $default, {
    TResult? Function(CharactersEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CharactersEventSearch value)? $default, {
    TResult Function(CharactersEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharactersEventCopyWith<CharactersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res, CharactersEvent>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res, $Val extends CharactersEvent>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharactersEventFetchCopyWith<$Res>
    implements $CharactersEventCopyWith<$Res> {
  factory _$$CharactersEventFetchCopyWith(_$CharactersEventFetch value,
          $Res Function(_$CharactersEventFetch) then) =
      __$$CharactersEventFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int currentPage});
}

/// @nodoc
class __$$CharactersEventFetchCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$CharactersEventFetch>
    implements _$$CharactersEventFetchCopyWith<$Res> {
  __$$CharactersEventFetchCopyWithImpl(_$CharactersEventFetch _value,
      $Res Function(_$CharactersEventFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? currentPage = null,
  }) {
    return _then(_$CharactersEventFetch(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CharactersEventFetch
    with DiagnosticableTreeMixin
    implements CharactersEventFetch {
  const _$CharactersEventFetch(this.name, this.currentPage);

  @override
  final String name;
  @override
  final int currentPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.fetch(name: $name, currentPage: $currentPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersEvent.fetch'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('currentPage', currentPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersEventFetch &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersEventFetchCopyWith<_$CharactersEventFetch> get copyWith =>
      __$$CharactersEventFetchCopyWithImpl<_$CharactersEventFetch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default, {
    required TResult Function(String name, int currentPage) fetch,
  }) {
    return fetch(name, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name)? $default, {
    TResult? Function(String name, int currentPage)? fetch,
  }) {
    return fetch?.call(name, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function(String name, int currentPage)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(name, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CharactersEventSearch value) $default, {
    required TResult Function(CharactersEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CharactersEventSearch value)? $default, {
    TResult? Function(CharactersEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CharactersEventSearch value)? $default, {
    TResult Function(CharactersEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class CharactersEventFetch implements CharactersEvent {
  const factory CharactersEventFetch(final String name, final int currentPage) =
      _$CharactersEventFetch;

  @override
  String get name;
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$CharactersEventFetchCopyWith<_$CharactersEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersEventSearchCopyWith<$Res>
    implements $CharactersEventCopyWith<$Res> {
  factory _$$CharactersEventSearchCopyWith(_$CharactersEventSearch value,
          $Res Function(_$CharactersEventSearch) then) =
      __$$CharactersEventSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CharactersEventSearchCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$CharactersEventSearch>
    implements _$$CharactersEventSearchCopyWith<$Res> {
  __$$CharactersEventSearchCopyWithImpl(_$CharactersEventSearch _value,
      $Res Function(_$CharactersEventSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CharactersEventSearch(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharactersEventSearch
    with DiagnosticableTreeMixin
    implements CharactersEventSearch {
  const _$CharactersEventSearch(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersEvent'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersEventSearch &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersEventSearchCopyWith<_$CharactersEventSearch> get copyWith =>
      __$$CharactersEventSearchCopyWithImpl<_$CharactersEventSearch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default, {
    required TResult Function(String name, int currentPage) fetch,
  }) {
    return $default(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name)? $default, {
    TResult? Function(String name, int currentPage)? fetch,
  }) {
    return $default?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function(String name, int currentPage)? fetch,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CharactersEventSearch value) $default, {
    required TResult Function(CharactersEventFetch value) fetch,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CharactersEventSearch value)? $default, {
    TResult? Function(CharactersEventFetch value)? fetch,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CharactersEventSearch value)? $default, {
    TResult Function(CharactersEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CharactersEventSearch implements CharactersEvent {
  const factory CharactersEventSearch(final String name) =
      _$CharactersEventSearch;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CharactersEventSearchCopyWith<_$CharactersEventSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int allPage, List<Results> result)
        searchCharacters,
    required TResult Function(List<Results> models) loading,
    required TResult Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)
        success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int allPage, List<Results> result)?
        searchCharacters,
    TResult? Function(List<Results> models)? loading,
    TResult? Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)?
        success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int allPage, List<Results> result)?
        searchCharacters,
    TResult Function(List<Results> models)? loading,
    TResult Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersStateSearch value) searchCharacters,
    required TResult Function(CharactersStateLoading value) loading,
    required TResult Function(CharactersStateSuccess value) success,
    required TResult Function(CharactersStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersStateSearch value)? searchCharacters,
    TResult? Function(CharactersStateLoading value)? loading,
    TResult? Function(CharactersStateSuccess value)? success,
    TResult? Function(CharactersStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersStateSearch value)? searchCharacters,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateSuccess value)? success,
    TResult Function(CharactersStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res, CharactersState>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res, $Val extends CharactersState>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharactersStateSearchCopyWith<$Res> {
  factory _$$CharactersStateSearchCopyWith(_$CharactersStateSearch value,
          $Res Function(_$CharactersStateSearch) then) =
      __$$CharactersStateSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, int allPage, List<Results> result});
}

/// @nodoc
class __$$CharactersStateSearchCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersStateSearch>
    implements _$$CharactersStateSearchCopyWith<$Res> {
  __$$CharactersStateSearchCopyWithImpl(_$CharactersStateSearch _value,
      $Res Function(_$CharactersStateSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? allPage = null,
    Object? result = null,
  }) {
    return _then(_$CharactersStateSearch(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      allPage: null == allPage
          ? _value.allPage
          : allPage // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc

class _$CharactersStateSearch
    with DiagnosticableTreeMixin
    implements CharactersStateSearch {
  const _$CharactersStateSearch(
      {required this.name,
      required this.allPage,
      required final List<Results> result})
      : _result = result;

  @override
  final String name;
  @override
  final int allPage;
  final List<Results> _result;
  @override
  List<Results> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.searchCharacters(name: $name, allPage: $allPage, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersState.searchCharacters'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('allPage', allPage))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersStateSearch &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.allPage, allPage) || other.allPage == allPage) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, allPage, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersStateSearchCopyWith<_$CharactersStateSearch> get copyWith =>
      __$$CharactersStateSearchCopyWithImpl<_$CharactersStateSearch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int allPage, List<Results> result)
        searchCharacters,
    required TResult Function(List<Results> models) loading,
    required TResult Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)
        success,
    required TResult Function() error,
  }) {
    return searchCharacters(name, allPage, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int allPage, List<Results> result)?
        searchCharacters,
    TResult? Function(List<Results> models)? loading,
    TResult? Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)?
        success,
    TResult? Function()? error,
  }) {
    return searchCharacters?.call(name, allPage, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int allPage, List<Results> result)?
        searchCharacters,
    TResult Function(List<Results> models)? loading,
    TResult Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (searchCharacters != null) {
      return searchCharacters(name, allPage, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersStateSearch value) searchCharacters,
    required TResult Function(CharactersStateLoading value) loading,
    required TResult Function(CharactersStateSuccess value) success,
    required TResult Function(CharactersStateError value) error,
  }) {
    return searchCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersStateSearch value)? searchCharacters,
    TResult? Function(CharactersStateLoading value)? loading,
    TResult? Function(CharactersStateSuccess value)? success,
    TResult? Function(CharactersStateError value)? error,
  }) {
    return searchCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersStateSearch value)? searchCharacters,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateSuccess value)? success,
    TResult Function(CharactersStateError value)? error,
    required TResult orElse(),
  }) {
    if (searchCharacters != null) {
      return searchCharacters(this);
    }
    return orElse();
  }
}

abstract class CharactersStateSearch implements CharactersState {
  const factory CharactersStateSearch(
      {required final String name,
      required final int allPage,
      required final List<Results> result}) = _$CharactersStateSearch;

  String get name;
  int get allPage;
  List<Results> get result;
  @JsonKey(ignore: true)
  _$$CharactersStateSearchCopyWith<_$CharactersStateSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersStateLoadingCopyWith<$Res> {
  factory _$$CharactersStateLoadingCopyWith(_$CharactersStateLoading value,
          $Res Function(_$CharactersStateLoading) then) =
      __$$CharactersStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Results> models});
}

/// @nodoc
class __$$CharactersStateLoadingCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersStateLoading>
    implements _$$CharactersStateLoadingCopyWith<$Res> {
  __$$CharactersStateLoadingCopyWithImpl(_$CharactersStateLoading _value,
      $Res Function(_$CharactersStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
  }) {
    return _then(_$CharactersStateLoading(
      models: null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc

class _$CharactersStateLoading
    with DiagnosticableTreeMixin
    implements CharactersStateLoading {
  const _$CharactersStateLoading({required final List<Results> models})
      : _models = models;

  final List<Results> _models;
  @override
  List<Results> get models {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.loading(models: $models)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersState.loading'))
      ..add(DiagnosticsProperty('models', models));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersStateLoading &&
            const DeepCollectionEquality().equals(other._models, _models));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_models));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersStateLoadingCopyWith<_$CharactersStateLoading> get copyWith =>
      __$$CharactersStateLoadingCopyWithImpl<_$CharactersStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int allPage, List<Results> result)
        searchCharacters,
    required TResult Function(List<Results> models) loading,
    required TResult Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)
        success,
    required TResult Function() error,
  }) {
    return loading(models);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int allPage, List<Results> result)?
        searchCharacters,
    TResult? Function(List<Results> models)? loading,
    TResult? Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)?
        success,
    TResult? Function()? error,
  }) {
    return loading?.call(models);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int allPage, List<Results> result)?
        searchCharacters,
    TResult Function(List<Results> models)? loading,
    TResult Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(models);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersStateSearch value) searchCharacters,
    required TResult Function(CharactersStateLoading value) loading,
    required TResult Function(CharactersStateSuccess value) success,
    required TResult Function(CharactersStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersStateSearch value)? searchCharacters,
    TResult? Function(CharactersStateLoading value)? loading,
    TResult? Function(CharactersStateSuccess value)? success,
    TResult? Function(CharactersStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersStateSearch value)? searchCharacters,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateSuccess value)? success,
    TResult Function(CharactersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharactersStateLoading implements CharactersState {
  const factory CharactersStateLoading({required final List<Results> models}) =
      _$CharactersStateLoading;

  List<Results> get models;
  @JsonKey(ignore: true)
  _$$CharactersStateLoadingCopyWith<_$CharactersStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersStateSuccessCopyWith<$Res> {
  factory _$$CharactersStateSuccessCopyWith(_$CharactersStateSuccess value,
          $Res Function(_$CharactersStateSuccess) then) =
      __$$CharactersStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({int allPage, bool isLoading, List<Results> charactersSuccess});
}

/// @nodoc
class __$$CharactersStateSuccessCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersStateSuccess>
    implements _$$CharactersStateSuccessCopyWith<$Res> {
  __$$CharactersStateSuccessCopyWithImpl(_$CharactersStateSuccess _value,
      $Res Function(_$CharactersStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allPage = null,
    Object? isLoading = null,
    Object? charactersSuccess = null,
  }) {
    return _then(_$CharactersStateSuccess(
      allPage: null == allPage
          ? _value.allPage
          : allPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      charactersSuccess: null == charactersSuccess
          ? _value._charactersSuccess
          : charactersSuccess // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc

class _$CharactersStateSuccess
    with DiagnosticableTreeMixin
    implements CharactersStateSuccess {
  const _$CharactersStateSuccess(
      {required this.allPage,
      required this.isLoading,
      required final List<Results> charactersSuccess})
      : _charactersSuccess = charactersSuccess;

  @override
  final int allPage;
  @override
  final bool isLoading;
  final List<Results> _charactersSuccess;
  @override
  List<Results> get charactersSuccess {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_charactersSuccess);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.success(allPage: $allPage, isLoading: $isLoading, charactersSuccess: $charactersSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersState.success'))
      ..add(DiagnosticsProperty('allPage', allPage))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('charactersSuccess', charactersSuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersStateSuccess &&
            (identical(other.allPage, allPage) || other.allPage == allPage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._charactersSuccess, _charactersSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allPage, isLoading,
      const DeepCollectionEquality().hash(_charactersSuccess));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersStateSuccessCopyWith<_$CharactersStateSuccess> get copyWith =>
      __$$CharactersStateSuccessCopyWithImpl<_$CharactersStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int allPage, List<Results> result)
        searchCharacters,
    required TResult Function(List<Results> models) loading,
    required TResult Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)
        success,
    required TResult Function() error,
  }) {
    return success(allPage, isLoading, charactersSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int allPage, List<Results> result)?
        searchCharacters,
    TResult? Function(List<Results> models)? loading,
    TResult? Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)?
        success,
    TResult? Function()? error,
  }) {
    return success?.call(allPage, isLoading, charactersSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int allPage, List<Results> result)?
        searchCharacters,
    TResult Function(List<Results> models)? loading,
    TResult Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(allPage, isLoading, charactersSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersStateSearch value) searchCharacters,
    required TResult Function(CharactersStateLoading value) loading,
    required TResult Function(CharactersStateSuccess value) success,
    required TResult Function(CharactersStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersStateSearch value)? searchCharacters,
    TResult? Function(CharactersStateLoading value)? loading,
    TResult? Function(CharactersStateSuccess value)? success,
    TResult? Function(CharactersStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersStateSearch value)? searchCharacters,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateSuccess value)? success,
    TResult Function(CharactersStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CharactersStateSuccess implements CharactersState {
  const factory CharactersStateSuccess(
          {required final int allPage,
          required final bool isLoading,
          required final List<Results> charactersSuccess}) =
      _$CharactersStateSuccess;

  int get allPage;
  bool get isLoading;
  List<Results> get charactersSuccess;
  @JsonKey(ignore: true)
  _$$CharactersStateSuccessCopyWith<_$CharactersStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersStateErrorCopyWith<$Res> {
  factory _$$CharactersStateErrorCopyWith(_$CharactersStateError value,
          $Res Function(_$CharactersStateError) then) =
      __$$CharactersStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersStateErrorCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersStateError>
    implements _$$CharactersStateErrorCopyWith<$Res> {
  __$$CharactersStateErrorCopyWithImpl(_$CharactersStateError _value,
      $Res Function(_$CharactersStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharactersStateError
    with DiagnosticableTreeMixin
    implements CharactersStateError {
  const _$CharactersStateError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CharactersState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharactersStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int allPage, List<Results> result)
        searchCharacters,
    required TResult Function(List<Results> models) loading,
    required TResult Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)
        success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int allPage, List<Results> result)?
        searchCharacters,
    TResult? Function(List<Results> models)? loading,
    TResult? Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)?
        success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int allPage, List<Results> result)?
        searchCharacters,
    TResult Function(List<Results> models)? loading,
    TResult Function(
            int allPage, bool isLoading, List<Results> charactersSuccess)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersStateSearch value) searchCharacters,
    required TResult Function(CharactersStateLoading value) loading,
    required TResult Function(CharactersStateSuccess value) success,
    required TResult Function(CharactersStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersStateSearch value)? searchCharacters,
    TResult? Function(CharactersStateLoading value)? loading,
    TResult? Function(CharactersStateSuccess value)? success,
    TResult? Function(CharactersStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersStateSearch value)? searchCharacters,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateSuccess value)? success,
    TResult Function(CharactersStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharactersStateError implements CharactersState {
  const factory CharactersStateError() = _$CharactersStateError;
}
