// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_autocomplete_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchAutocompleteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) autocompleteSearch,
    required TResult Function(SearchResultEntity searchResultEntity)
        searchAutocompleteGotten,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        searchAutocompleteNotGotten,
    required TResult Function() disposeAutocompleteSearchDebounceTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? autocompleteSearch,
    TResult? Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult? Function()? disposeAutocompleteSearchDebounceTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? autocompleteSearch,
    TResult Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult Function()? disposeAutocompleteSearchDebounceTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AutocompleteSearch value) autocompleteSearch,
    required TResult Function(_SearchAutocompleteGotten value)
        searchAutocompleteGotten,
    required TResult Function(_SearchAutocompleteNotGotten value)
        searchAutocompleteNotGotten,
    required TResult Function(_DisposeAutocompleteSearchDebounceTimer value)
        disposeAutocompleteSearchDebounceTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult? Function(_SearchAutocompleteGotten value)?
        searchAutocompleteGotten,
    TResult? Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult? Function(_DisposeAutocompleteSearchDebounceTimer value)?
        disposeAutocompleteSearchDebounceTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult Function(_SearchAutocompleteGotten value)? searchAutocompleteGotten,
    TResult Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult Function(_DisposeAutocompleteSearchDebounceTimer value)?
        disposeAutocompleteSearchDebounceTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAutocompleteEventCopyWith<$Res> {
  factory $SearchAutocompleteEventCopyWith(SearchAutocompleteEvent value,
          $Res Function(SearchAutocompleteEvent) then) =
      _$SearchAutocompleteEventCopyWithImpl<$Res, SearchAutocompleteEvent>;
}

/// @nodoc
class _$SearchAutocompleteEventCopyWithImpl<$Res,
        $Val extends SearchAutocompleteEvent>
    implements $SearchAutocompleteEventCopyWith<$Res> {
  _$SearchAutocompleteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AutocompleteSearchImplCopyWith<$Res> {
  factory _$$AutocompleteSearchImplCopyWith(_$AutocompleteSearchImpl value,
          $Res Function(_$AutocompleteSearchImpl) then) =
      __$$AutocompleteSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$AutocompleteSearchImplCopyWithImpl<$Res>
    extends _$SearchAutocompleteEventCopyWithImpl<$Res,
        _$AutocompleteSearchImpl>
    implements _$$AutocompleteSearchImplCopyWith<$Res> {
  __$$AutocompleteSearchImplCopyWithImpl(_$AutocompleteSearchImpl _value,
      $Res Function(_$AutocompleteSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$AutocompleteSearchImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AutocompleteSearchImpl implements _AutocompleteSearch {
  const _$AutocompleteSearchImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchAutocompleteEvent.autocompleteSearch(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutocompleteSearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutocompleteSearchImplCopyWith<_$AutocompleteSearchImpl> get copyWith =>
      __$$AutocompleteSearchImplCopyWithImpl<_$AutocompleteSearchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) autocompleteSearch,
    required TResult Function(SearchResultEntity searchResultEntity)
        searchAutocompleteGotten,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        searchAutocompleteNotGotten,
    required TResult Function() disposeAutocompleteSearchDebounceTimer,
  }) {
    return autocompleteSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? autocompleteSearch,
    TResult? Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult? Function()? disposeAutocompleteSearchDebounceTimer,
  }) {
    return autocompleteSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? autocompleteSearch,
    TResult Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult Function()? disposeAutocompleteSearchDebounceTimer,
    required TResult orElse(),
  }) {
    if (autocompleteSearch != null) {
      return autocompleteSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AutocompleteSearch value) autocompleteSearch,
    required TResult Function(_SearchAutocompleteGotten value)
        searchAutocompleteGotten,
    required TResult Function(_SearchAutocompleteNotGotten value)
        searchAutocompleteNotGotten,
    required TResult Function(_DisposeAutocompleteSearchDebounceTimer value)
        disposeAutocompleteSearchDebounceTimer,
  }) {
    return autocompleteSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult? Function(_SearchAutocompleteGotten value)?
        searchAutocompleteGotten,
    TResult? Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult? Function(_DisposeAutocompleteSearchDebounceTimer value)?
        disposeAutocompleteSearchDebounceTimer,
  }) {
    return autocompleteSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult Function(_SearchAutocompleteGotten value)? searchAutocompleteGotten,
    TResult Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult Function(_DisposeAutocompleteSearchDebounceTimer value)?
        disposeAutocompleteSearchDebounceTimer,
    required TResult orElse(),
  }) {
    if (autocompleteSearch != null) {
      return autocompleteSearch(this);
    }
    return orElse();
  }
}

abstract class _AutocompleteSearch implements SearchAutocompleteEvent {
  const factory _AutocompleteSearch({required final String query}) =
      _$AutocompleteSearchImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$AutocompleteSearchImplCopyWith<_$AutocompleteSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAutocompleteGottenImplCopyWith<$Res> {
  factory _$$SearchAutocompleteGottenImplCopyWith(
          _$SearchAutocompleteGottenImpl value,
          $Res Function(_$SearchAutocompleteGottenImpl) then) =
      __$$SearchAutocompleteGottenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchResultEntity searchResultEntity});
}

/// @nodoc
class __$$SearchAutocompleteGottenImplCopyWithImpl<$Res>
    extends _$SearchAutocompleteEventCopyWithImpl<$Res,
        _$SearchAutocompleteGottenImpl>
    implements _$$SearchAutocompleteGottenImplCopyWith<$Res> {
  __$$SearchAutocompleteGottenImplCopyWithImpl(
      _$SearchAutocompleteGottenImpl _value,
      $Res Function(_$SearchAutocompleteGottenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResultEntity = null,
  }) {
    return _then(_$SearchAutocompleteGottenImpl(
      searchResultEntity: null == searchResultEntity
          ? _value.searchResultEntity
          : searchResultEntity // ignore: cast_nullable_to_non_nullable
              as SearchResultEntity,
    ));
  }
}

/// @nodoc

class _$SearchAutocompleteGottenImpl implements _SearchAutocompleteGotten {
  const _$SearchAutocompleteGottenImpl({required this.searchResultEntity});

  @override
  final SearchResultEntity searchResultEntity;

  @override
  String toString() {
    return 'SearchAutocompleteEvent.searchAutocompleteGotten(searchResultEntity: $searchResultEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAutocompleteGottenImpl &&
            (identical(other.searchResultEntity, searchResultEntity) ||
                other.searchResultEntity == searchResultEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchResultEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAutocompleteGottenImplCopyWith<_$SearchAutocompleteGottenImpl>
      get copyWith => __$$SearchAutocompleteGottenImplCopyWithImpl<
          _$SearchAutocompleteGottenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) autocompleteSearch,
    required TResult Function(SearchResultEntity searchResultEntity)
        searchAutocompleteGotten,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        searchAutocompleteNotGotten,
    required TResult Function() disposeAutocompleteSearchDebounceTimer,
  }) {
    return searchAutocompleteGotten(searchResultEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? autocompleteSearch,
    TResult? Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult? Function()? disposeAutocompleteSearchDebounceTimer,
  }) {
    return searchAutocompleteGotten?.call(searchResultEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? autocompleteSearch,
    TResult Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult Function()? disposeAutocompleteSearchDebounceTimer,
    required TResult orElse(),
  }) {
    if (searchAutocompleteGotten != null) {
      return searchAutocompleteGotten(searchResultEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AutocompleteSearch value) autocompleteSearch,
    required TResult Function(_SearchAutocompleteGotten value)
        searchAutocompleteGotten,
    required TResult Function(_SearchAutocompleteNotGotten value)
        searchAutocompleteNotGotten,
    required TResult Function(_DisposeAutocompleteSearchDebounceTimer value)
        disposeAutocompleteSearchDebounceTimer,
  }) {
    return searchAutocompleteGotten(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult? Function(_SearchAutocompleteGotten value)?
        searchAutocompleteGotten,
    TResult? Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult? Function(_DisposeAutocompleteSearchDebounceTimer value)?
        disposeAutocompleteSearchDebounceTimer,
  }) {
    return searchAutocompleteGotten?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult Function(_SearchAutocompleteGotten value)? searchAutocompleteGotten,
    TResult Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult Function(_DisposeAutocompleteSearchDebounceTimer value)?
        disposeAutocompleteSearchDebounceTimer,
    required TResult orElse(),
  }) {
    if (searchAutocompleteGotten != null) {
      return searchAutocompleteGotten(this);
    }
    return orElse();
  }
}

abstract class _SearchAutocompleteGotten implements SearchAutocompleteEvent {
  const factory _SearchAutocompleteGotten(
          {required final SearchResultEntity searchResultEntity}) =
      _$SearchAutocompleteGottenImpl;

  SearchResultEntity get searchResultEntity;
  @JsonKey(ignore: true)
  _$$SearchAutocompleteGottenImplCopyWith<_$SearchAutocompleteGottenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAutocompleteNotGottenImplCopyWith<$Res> {
  factory _$$SearchAutocompleteNotGottenImplCopyWith(
          _$SearchAutocompleteNotGottenImpl value,
          $Res Function(_$SearchAutocompleteNotGottenImpl) then) =
      __$$SearchAutocompleteNotGottenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchAutocompleteFailure searchAutocompleteFailure});
}

/// @nodoc
class __$$SearchAutocompleteNotGottenImplCopyWithImpl<$Res>
    extends _$SearchAutocompleteEventCopyWithImpl<$Res,
        _$SearchAutocompleteNotGottenImpl>
    implements _$$SearchAutocompleteNotGottenImplCopyWith<$Res> {
  __$$SearchAutocompleteNotGottenImplCopyWithImpl(
      _$SearchAutocompleteNotGottenImpl _value,
      $Res Function(_$SearchAutocompleteNotGottenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchAutocompleteFailure = null,
  }) {
    return _then(_$SearchAutocompleteNotGottenImpl(
      searchAutocompleteFailure: null == searchAutocompleteFailure
          ? _value.searchAutocompleteFailure
          : searchAutocompleteFailure // ignore: cast_nullable_to_non_nullable
              as SearchAutocompleteFailure,
    ));
  }
}

/// @nodoc

class _$SearchAutocompleteNotGottenImpl
    implements _SearchAutocompleteNotGotten {
  const _$SearchAutocompleteNotGottenImpl(
      {required this.searchAutocompleteFailure});

  @override
  final SearchAutocompleteFailure searchAutocompleteFailure;

  @override
  String toString() {
    return 'SearchAutocompleteEvent.searchAutocompleteNotGotten(searchAutocompleteFailure: $searchAutocompleteFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAutocompleteNotGottenImpl &&
            (identical(other.searchAutocompleteFailure,
                    searchAutocompleteFailure) ||
                other.searchAutocompleteFailure == searchAutocompleteFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchAutocompleteFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAutocompleteNotGottenImplCopyWith<_$SearchAutocompleteNotGottenImpl>
      get copyWith => __$$SearchAutocompleteNotGottenImplCopyWithImpl<
          _$SearchAutocompleteNotGottenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) autocompleteSearch,
    required TResult Function(SearchResultEntity searchResultEntity)
        searchAutocompleteGotten,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        searchAutocompleteNotGotten,
    required TResult Function() disposeAutocompleteSearchDebounceTimer,
  }) {
    return searchAutocompleteNotGotten(searchAutocompleteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? autocompleteSearch,
    TResult? Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult? Function()? disposeAutocompleteSearchDebounceTimer,
  }) {
    return searchAutocompleteNotGotten?.call(searchAutocompleteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? autocompleteSearch,
    TResult Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult Function()? disposeAutocompleteSearchDebounceTimer,
    required TResult orElse(),
  }) {
    if (searchAutocompleteNotGotten != null) {
      return searchAutocompleteNotGotten(searchAutocompleteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AutocompleteSearch value) autocompleteSearch,
    required TResult Function(_SearchAutocompleteGotten value)
        searchAutocompleteGotten,
    required TResult Function(_SearchAutocompleteNotGotten value)
        searchAutocompleteNotGotten,
    required TResult Function(_DisposeAutocompleteSearchDebounceTimer value)
        disposeAutocompleteSearchDebounceTimer,
  }) {
    return searchAutocompleteNotGotten(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult? Function(_SearchAutocompleteGotten value)?
        searchAutocompleteGotten,
    TResult? Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult? Function(_DisposeAutocompleteSearchDebounceTimer value)?
        disposeAutocompleteSearchDebounceTimer,
  }) {
    return searchAutocompleteNotGotten?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult Function(_SearchAutocompleteGotten value)? searchAutocompleteGotten,
    TResult Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult Function(_DisposeAutocompleteSearchDebounceTimer value)?
        disposeAutocompleteSearchDebounceTimer,
    required TResult orElse(),
  }) {
    if (searchAutocompleteNotGotten != null) {
      return searchAutocompleteNotGotten(this);
    }
    return orElse();
  }
}

abstract class _SearchAutocompleteNotGotten implements SearchAutocompleteEvent {
  const factory _SearchAutocompleteNotGotten(
      {required final SearchAutocompleteFailure
          searchAutocompleteFailure}) = _$SearchAutocompleteNotGottenImpl;

  SearchAutocompleteFailure get searchAutocompleteFailure;
  @JsonKey(ignore: true)
  _$$SearchAutocompleteNotGottenImplCopyWith<_$SearchAutocompleteNotGottenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisposeAutocompleteSearchDebounceTimerImplCopyWith<$Res> {
  factory _$$DisposeAutocompleteSearchDebounceTimerImplCopyWith(
          _$DisposeAutocompleteSearchDebounceTimerImpl value,
          $Res Function(_$DisposeAutocompleteSearchDebounceTimerImpl) then) =
      __$$DisposeAutocompleteSearchDebounceTimerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeAutocompleteSearchDebounceTimerImplCopyWithImpl<$Res>
    extends _$SearchAutocompleteEventCopyWithImpl<$Res,
        _$DisposeAutocompleteSearchDebounceTimerImpl>
    implements _$$DisposeAutocompleteSearchDebounceTimerImplCopyWith<$Res> {
  __$$DisposeAutocompleteSearchDebounceTimerImplCopyWithImpl(
      _$DisposeAutocompleteSearchDebounceTimerImpl _value,
      $Res Function(_$DisposeAutocompleteSearchDebounceTimerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisposeAutocompleteSearchDebounceTimerImpl
    implements _DisposeAutocompleteSearchDebounceTimer {
  const _$DisposeAutocompleteSearchDebounceTimerImpl();

  @override
  String toString() {
    return 'SearchAutocompleteEvent.disposeAutocompleteSearchDebounceTimer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisposeAutocompleteSearchDebounceTimerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) autocompleteSearch,
    required TResult Function(SearchResultEntity searchResultEntity)
        searchAutocompleteGotten,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        searchAutocompleteNotGotten,
    required TResult Function() disposeAutocompleteSearchDebounceTimer,
  }) {
    return disposeAutocompleteSearchDebounceTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? autocompleteSearch,
    TResult? Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult? Function()? disposeAutocompleteSearchDebounceTimer,
  }) {
    return disposeAutocompleteSearchDebounceTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? autocompleteSearch,
    TResult Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult Function()? disposeAutocompleteSearchDebounceTimer,
    required TResult orElse(),
  }) {
    if (disposeAutocompleteSearchDebounceTimer != null) {
      return disposeAutocompleteSearchDebounceTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AutocompleteSearch value) autocompleteSearch,
    required TResult Function(_SearchAutocompleteGotten value)
        searchAutocompleteGotten,
    required TResult Function(_SearchAutocompleteNotGotten value)
        searchAutocompleteNotGotten,
    required TResult Function(_DisposeAutocompleteSearchDebounceTimer value)
        disposeAutocompleteSearchDebounceTimer,
  }) {
    return disposeAutocompleteSearchDebounceTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult? Function(_SearchAutocompleteGotten value)?
        searchAutocompleteGotten,
    TResult? Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult? Function(_DisposeAutocompleteSearchDebounceTimer value)?
        disposeAutocompleteSearchDebounceTimer,
  }) {
    return disposeAutocompleteSearchDebounceTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult Function(_SearchAutocompleteGotten value)? searchAutocompleteGotten,
    TResult Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult Function(_DisposeAutocompleteSearchDebounceTimer value)?
        disposeAutocompleteSearchDebounceTimer,
    required TResult orElse(),
  }) {
    if (disposeAutocompleteSearchDebounceTimer != null) {
      return disposeAutocompleteSearchDebounceTimer(this);
    }
    return orElse();
  }
}

abstract class _DisposeAutocompleteSearchDebounceTimer
    implements SearchAutocompleteEvent {
  const factory _DisposeAutocompleteSearchDebounceTimer() =
      _$DisposeAutocompleteSearchDebounceTimerImpl;
}

/// @nodoc
mixin _$SearchAutocompleteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingSearchAutocomplete,
    required TResult Function(SearchResultEntity searchResultEntity)
        gotSearchAutocomplete,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToGetSearchAutocomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingSearchAutocomplete,
    TResult? Function(SearchResultEntity searchResultEntity)?
        gotSearchAutocomplete,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingSearchAutocomplete,
    TResult Function(SearchResultEntity searchResultEntity)?
        gotSearchAutocomplete,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingSearchAutocomplete value)
        gettingSearchAutocomplete,
    required TResult Function(_GotSearchAutocomplete value)
        gotSearchAutocomplete,
    required TResult Function(_FailedToGetSearchAutocomplete value)
        failedToGetSearchAutocomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingSearchAutocomplete value)?
        gettingSearchAutocomplete,
    TResult? Function(_GotSearchAutocomplete value)? gotSearchAutocomplete,
    TResult? Function(_FailedToGetSearchAutocomplete value)?
        failedToGetSearchAutocomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingSearchAutocomplete value)?
        gettingSearchAutocomplete,
    TResult Function(_GotSearchAutocomplete value)? gotSearchAutocomplete,
    TResult Function(_FailedToGetSearchAutocomplete value)?
        failedToGetSearchAutocomplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAutocompleteStateCopyWith<$Res> {
  factory $SearchAutocompleteStateCopyWith(SearchAutocompleteState value,
          $Res Function(SearchAutocompleteState) then) =
      _$SearchAutocompleteStateCopyWithImpl<$Res, SearchAutocompleteState>;
}

/// @nodoc
class _$SearchAutocompleteStateCopyWithImpl<$Res,
        $Val extends SearchAutocompleteState>
    implements $SearchAutocompleteStateCopyWith<$Res> {
  _$SearchAutocompleteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchAutocompleteStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchAutocompleteState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingSearchAutocomplete,
    required TResult Function(SearchResultEntity searchResultEntity)
        gotSearchAutocomplete,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToGetSearchAutocomplete,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingSearchAutocomplete,
    TResult? Function(SearchResultEntity searchResultEntity)?
        gotSearchAutocomplete,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingSearchAutocomplete,
    TResult Function(SearchResultEntity searchResultEntity)?
        gotSearchAutocomplete,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingSearchAutocomplete value)
        gettingSearchAutocomplete,
    required TResult Function(_GotSearchAutocomplete value)
        gotSearchAutocomplete,
    required TResult Function(_FailedToGetSearchAutocomplete value)
        failedToGetSearchAutocomplete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingSearchAutocomplete value)?
        gettingSearchAutocomplete,
    TResult? Function(_GotSearchAutocomplete value)? gotSearchAutocomplete,
    TResult? Function(_FailedToGetSearchAutocomplete value)?
        failedToGetSearchAutocomplete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingSearchAutocomplete value)?
        gettingSearchAutocomplete,
    TResult Function(_GotSearchAutocomplete value)? gotSearchAutocomplete,
    TResult Function(_FailedToGetSearchAutocomplete value)?
        failedToGetSearchAutocomplete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchAutocompleteState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingSearchAutocompleteImplCopyWith<$Res> {
  factory _$$GettingSearchAutocompleteImplCopyWith(
          _$GettingSearchAutocompleteImpl value,
          $Res Function(_$GettingSearchAutocompleteImpl) then) =
      __$$GettingSearchAutocompleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingSearchAutocompleteImplCopyWithImpl<$Res>
    extends _$SearchAutocompleteStateCopyWithImpl<$Res,
        _$GettingSearchAutocompleteImpl>
    implements _$$GettingSearchAutocompleteImplCopyWith<$Res> {
  __$$GettingSearchAutocompleteImplCopyWithImpl(
      _$GettingSearchAutocompleteImpl _value,
      $Res Function(_$GettingSearchAutocompleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GettingSearchAutocompleteImpl implements _GettingSearchAutocomplete {
  const _$GettingSearchAutocompleteImpl();

  @override
  String toString() {
    return 'SearchAutocompleteState.gettingSearchAutocomplete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingSearchAutocompleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingSearchAutocomplete,
    required TResult Function(SearchResultEntity searchResultEntity)
        gotSearchAutocomplete,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToGetSearchAutocomplete,
  }) {
    return gettingSearchAutocomplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingSearchAutocomplete,
    TResult? Function(SearchResultEntity searchResultEntity)?
        gotSearchAutocomplete,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
  }) {
    return gettingSearchAutocomplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingSearchAutocomplete,
    TResult Function(SearchResultEntity searchResultEntity)?
        gotSearchAutocomplete,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
    required TResult orElse(),
  }) {
    if (gettingSearchAutocomplete != null) {
      return gettingSearchAutocomplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingSearchAutocomplete value)
        gettingSearchAutocomplete,
    required TResult Function(_GotSearchAutocomplete value)
        gotSearchAutocomplete,
    required TResult Function(_FailedToGetSearchAutocomplete value)
        failedToGetSearchAutocomplete,
  }) {
    return gettingSearchAutocomplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingSearchAutocomplete value)?
        gettingSearchAutocomplete,
    TResult? Function(_GotSearchAutocomplete value)? gotSearchAutocomplete,
    TResult? Function(_FailedToGetSearchAutocomplete value)?
        failedToGetSearchAutocomplete,
  }) {
    return gettingSearchAutocomplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingSearchAutocomplete value)?
        gettingSearchAutocomplete,
    TResult Function(_GotSearchAutocomplete value)? gotSearchAutocomplete,
    TResult Function(_FailedToGetSearchAutocomplete value)?
        failedToGetSearchAutocomplete,
    required TResult orElse(),
  }) {
    if (gettingSearchAutocomplete != null) {
      return gettingSearchAutocomplete(this);
    }
    return orElse();
  }
}

abstract class _GettingSearchAutocomplete implements SearchAutocompleteState {
  const factory _GettingSearchAutocomplete() = _$GettingSearchAutocompleteImpl;
}

/// @nodoc
abstract class _$$GotSearchAutocompleteImplCopyWith<$Res> {
  factory _$$GotSearchAutocompleteImplCopyWith(
          _$GotSearchAutocompleteImpl value,
          $Res Function(_$GotSearchAutocompleteImpl) then) =
      __$$GotSearchAutocompleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchResultEntity searchResultEntity});
}

/// @nodoc
class __$$GotSearchAutocompleteImplCopyWithImpl<$Res>
    extends _$SearchAutocompleteStateCopyWithImpl<$Res,
        _$GotSearchAutocompleteImpl>
    implements _$$GotSearchAutocompleteImplCopyWith<$Res> {
  __$$GotSearchAutocompleteImplCopyWithImpl(_$GotSearchAutocompleteImpl _value,
      $Res Function(_$GotSearchAutocompleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResultEntity = null,
  }) {
    return _then(_$GotSearchAutocompleteImpl(
      searchResultEntity: null == searchResultEntity
          ? _value.searchResultEntity
          : searchResultEntity // ignore: cast_nullable_to_non_nullable
              as SearchResultEntity,
    ));
  }
}

/// @nodoc

class _$GotSearchAutocompleteImpl implements _GotSearchAutocomplete {
  const _$GotSearchAutocompleteImpl({required this.searchResultEntity});

  @override
  final SearchResultEntity searchResultEntity;

  @override
  String toString() {
    return 'SearchAutocompleteState.gotSearchAutocomplete(searchResultEntity: $searchResultEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotSearchAutocompleteImpl &&
            (identical(other.searchResultEntity, searchResultEntity) ||
                other.searchResultEntity == searchResultEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchResultEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotSearchAutocompleteImplCopyWith<_$GotSearchAutocompleteImpl>
      get copyWith => __$$GotSearchAutocompleteImplCopyWithImpl<
          _$GotSearchAutocompleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingSearchAutocomplete,
    required TResult Function(SearchResultEntity searchResultEntity)
        gotSearchAutocomplete,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToGetSearchAutocomplete,
  }) {
    return gotSearchAutocomplete(searchResultEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingSearchAutocomplete,
    TResult? Function(SearchResultEntity searchResultEntity)?
        gotSearchAutocomplete,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
  }) {
    return gotSearchAutocomplete?.call(searchResultEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingSearchAutocomplete,
    TResult Function(SearchResultEntity searchResultEntity)?
        gotSearchAutocomplete,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
    required TResult orElse(),
  }) {
    if (gotSearchAutocomplete != null) {
      return gotSearchAutocomplete(searchResultEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingSearchAutocomplete value)
        gettingSearchAutocomplete,
    required TResult Function(_GotSearchAutocomplete value)
        gotSearchAutocomplete,
    required TResult Function(_FailedToGetSearchAutocomplete value)
        failedToGetSearchAutocomplete,
  }) {
    return gotSearchAutocomplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingSearchAutocomplete value)?
        gettingSearchAutocomplete,
    TResult? Function(_GotSearchAutocomplete value)? gotSearchAutocomplete,
    TResult? Function(_FailedToGetSearchAutocomplete value)?
        failedToGetSearchAutocomplete,
  }) {
    return gotSearchAutocomplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingSearchAutocomplete value)?
        gettingSearchAutocomplete,
    TResult Function(_GotSearchAutocomplete value)? gotSearchAutocomplete,
    TResult Function(_FailedToGetSearchAutocomplete value)?
        failedToGetSearchAutocomplete,
    required TResult orElse(),
  }) {
    if (gotSearchAutocomplete != null) {
      return gotSearchAutocomplete(this);
    }
    return orElse();
  }
}

abstract class _GotSearchAutocomplete implements SearchAutocompleteState {
  const factory _GotSearchAutocomplete(
          {required final SearchResultEntity searchResultEntity}) =
      _$GotSearchAutocompleteImpl;

  SearchResultEntity get searchResultEntity;
  @JsonKey(ignore: true)
  _$$GotSearchAutocompleteImplCopyWith<_$GotSearchAutocompleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetSearchAutocompleteImplCopyWith<$Res> {
  factory _$$FailedToGetSearchAutocompleteImplCopyWith(
          _$FailedToGetSearchAutocompleteImpl value,
          $Res Function(_$FailedToGetSearchAutocompleteImpl) then) =
      __$$FailedToGetSearchAutocompleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchAutocompleteFailure searchAutocompleteFailure});
}

/// @nodoc
class __$$FailedToGetSearchAutocompleteImplCopyWithImpl<$Res>
    extends _$SearchAutocompleteStateCopyWithImpl<$Res,
        _$FailedToGetSearchAutocompleteImpl>
    implements _$$FailedToGetSearchAutocompleteImplCopyWith<$Res> {
  __$$FailedToGetSearchAutocompleteImplCopyWithImpl(
      _$FailedToGetSearchAutocompleteImpl _value,
      $Res Function(_$FailedToGetSearchAutocompleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchAutocompleteFailure = null,
  }) {
    return _then(_$FailedToGetSearchAutocompleteImpl(
      searchAutocompleteFailure: null == searchAutocompleteFailure
          ? _value.searchAutocompleteFailure
          : searchAutocompleteFailure // ignore: cast_nullable_to_non_nullable
              as SearchAutocompleteFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetSearchAutocompleteImpl
    implements _FailedToGetSearchAutocomplete {
  const _$FailedToGetSearchAutocompleteImpl(
      {required this.searchAutocompleteFailure});

  @override
  final SearchAutocompleteFailure searchAutocompleteFailure;

  @override
  String toString() {
    return 'SearchAutocompleteState.failedToGetSearchAutocomplete(searchAutocompleteFailure: $searchAutocompleteFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetSearchAutocompleteImpl &&
            (identical(other.searchAutocompleteFailure,
                    searchAutocompleteFailure) ||
                other.searchAutocompleteFailure == searchAutocompleteFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchAutocompleteFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetSearchAutocompleteImplCopyWith<
          _$FailedToGetSearchAutocompleteImpl>
      get copyWith => __$$FailedToGetSearchAutocompleteImplCopyWithImpl<
          _$FailedToGetSearchAutocompleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingSearchAutocomplete,
    required TResult Function(SearchResultEntity searchResultEntity)
        gotSearchAutocomplete,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToGetSearchAutocomplete,
  }) {
    return failedToGetSearchAutocomplete(searchAutocompleteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingSearchAutocomplete,
    TResult? Function(SearchResultEntity searchResultEntity)?
        gotSearchAutocomplete,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
  }) {
    return failedToGetSearchAutocomplete?.call(searchAutocompleteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingSearchAutocomplete,
    TResult Function(SearchResultEntity searchResultEntity)?
        gotSearchAutocomplete,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
    required TResult orElse(),
  }) {
    if (failedToGetSearchAutocomplete != null) {
      return failedToGetSearchAutocomplete(searchAutocompleteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingSearchAutocomplete value)
        gettingSearchAutocomplete,
    required TResult Function(_GotSearchAutocomplete value)
        gotSearchAutocomplete,
    required TResult Function(_FailedToGetSearchAutocomplete value)
        failedToGetSearchAutocomplete,
  }) {
    return failedToGetSearchAutocomplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingSearchAutocomplete value)?
        gettingSearchAutocomplete,
    TResult? Function(_GotSearchAutocomplete value)? gotSearchAutocomplete,
    TResult? Function(_FailedToGetSearchAutocomplete value)?
        failedToGetSearchAutocomplete,
  }) {
    return failedToGetSearchAutocomplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingSearchAutocomplete value)?
        gettingSearchAutocomplete,
    TResult Function(_GotSearchAutocomplete value)? gotSearchAutocomplete,
    TResult Function(_FailedToGetSearchAutocomplete value)?
        failedToGetSearchAutocomplete,
    required TResult orElse(),
  }) {
    if (failedToGetSearchAutocomplete != null) {
      return failedToGetSearchAutocomplete(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetSearchAutocomplete
    implements SearchAutocompleteState {
  const factory _FailedToGetSearchAutocomplete(
      {required final SearchAutocompleteFailure
          searchAutocompleteFailure}) = _$FailedToGetSearchAutocompleteImpl;

  SearchAutocompleteFailure get searchAutocompleteFailure;
  @JsonKey(ignore: true)
  _$$FailedToGetSearchAutocompleteImplCopyWith<
          _$FailedToGetSearchAutocompleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}
