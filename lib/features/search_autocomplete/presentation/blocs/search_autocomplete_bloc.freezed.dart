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
    required TResult Function(String mapboxID) retrieveGeometricCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? autocompleteSearch,
    TResult? Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult? Function(String mapboxID)? retrieveGeometricCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? autocompleteSearch,
    TResult Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult Function(String mapboxID)? retrieveGeometricCoordinates,
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
    required TResult Function(_RetrieveGeometricCoordinates value)
        retrieveGeometricCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult? Function(_SearchAutocompleteGotten value)?
        searchAutocompleteGotten,
    TResult? Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult? Function(_RetrieveGeometricCoordinates value)?
        retrieveGeometricCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult Function(_SearchAutocompleteGotten value)? searchAutocompleteGotten,
    TResult Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult Function(_RetrieveGeometricCoordinates value)?
        retrieveGeometricCoordinates,
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
    required TResult Function(String mapboxID) retrieveGeometricCoordinates,
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
    TResult? Function(String mapboxID)? retrieveGeometricCoordinates,
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
    TResult Function(String mapboxID)? retrieveGeometricCoordinates,
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
    required TResult Function(_RetrieveGeometricCoordinates value)
        retrieveGeometricCoordinates,
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
    TResult? Function(_RetrieveGeometricCoordinates value)?
        retrieveGeometricCoordinates,
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
    TResult Function(_RetrieveGeometricCoordinates value)?
        retrieveGeometricCoordinates,
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
    required TResult Function(String mapboxID) retrieveGeometricCoordinates,
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
    TResult? Function(String mapboxID)? retrieveGeometricCoordinates,
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
    TResult Function(String mapboxID)? retrieveGeometricCoordinates,
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
    required TResult Function(_RetrieveGeometricCoordinates value)
        retrieveGeometricCoordinates,
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
    TResult? Function(_RetrieveGeometricCoordinates value)?
        retrieveGeometricCoordinates,
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
    TResult Function(_RetrieveGeometricCoordinates value)?
        retrieveGeometricCoordinates,
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
    required TResult Function(String mapboxID) retrieveGeometricCoordinates,
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
    TResult? Function(String mapboxID)? retrieveGeometricCoordinates,
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
    TResult Function(String mapboxID)? retrieveGeometricCoordinates,
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
    required TResult Function(_RetrieveGeometricCoordinates value)
        retrieveGeometricCoordinates,
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
    TResult? Function(_RetrieveGeometricCoordinates value)?
        retrieveGeometricCoordinates,
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
    TResult Function(_RetrieveGeometricCoordinates value)?
        retrieveGeometricCoordinates,
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
abstract class _$$RetrieveGeometricCoordinatesImplCopyWith<$Res> {
  factory _$$RetrieveGeometricCoordinatesImplCopyWith(
          _$RetrieveGeometricCoordinatesImpl value,
          $Res Function(_$RetrieveGeometricCoordinatesImpl) then) =
      __$$RetrieveGeometricCoordinatesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mapboxID});
}

/// @nodoc
class __$$RetrieveGeometricCoordinatesImplCopyWithImpl<$Res>
    extends _$SearchAutocompleteEventCopyWithImpl<$Res,
        _$RetrieveGeometricCoordinatesImpl>
    implements _$$RetrieveGeometricCoordinatesImplCopyWith<$Res> {
  __$$RetrieveGeometricCoordinatesImplCopyWithImpl(
      _$RetrieveGeometricCoordinatesImpl _value,
      $Res Function(_$RetrieveGeometricCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapboxID = null,
  }) {
    return _then(_$RetrieveGeometricCoordinatesImpl(
      mapboxID: null == mapboxID
          ? _value.mapboxID
          : mapboxID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RetrieveGeometricCoordinatesImpl
    implements _RetrieveGeometricCoordinates {
  const _$RetrieveGeometricCoordinatesImpl({required this.mapboxID});

  @override
  final String mapboxID;

  @override
  String toString() {
    return 'SearchAutocompleteEvent.retrieveGeometricCoordinates(mapboxID: $mapboxID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveGeometricCoordinatesImpl &&
            (identical(other.mapboxID, mapboxID) ||
                other.mapboxID == mapboxID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapboxID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrieveGeometricCoordinatesImplCopyWith<
          _$RetrieveGeometricCoordinatesImpl>
      get copyWith => __$$RetrieveGeometricCoordinatesImplCopyWithImpl<
          _$RetrieveGeometricCoordinatesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) autocompleteSearch,
    required TResult Function(SearchResultEntity searchResultEntity)
        searchAutocompleteGotten,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        searchAutocompleteNotGotten,
    required TResult Function(String mapboxID) retrieveGeometricCoordinates,
  }) {
    return retrieveGeometricCoordinates(mapboxID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? autocompleteSearch,
    TResult? Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult? Function(String mapboxID)? retrieveGeometricCoordinates,
  }) {
    return retrieveGeometricCoordinates?.call(mapboxID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? autocompleteSearch,
    TResult Function(SearchResultEntity searchResultEntity)?
        searchAutocompleteGotten,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        searchAutocompleteNotGotten,
    TResult Function(String mapboxID)? retrieveGeometricCoordinates,
    required TResult orElse(),
  }) {
    if (retrieveGeometricCoordinates != null) {
      return retrieveGeometricCoordinates(mapboxID);
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
    required TResult Function(_RetrieveGeometricCoordinates value)
        retrieveGeometricCoordinates,
  }) {
    return retrieveGeometricCoordinates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult? Function(_SearchAutocompleteGotten value)?
        searchAutocompleteGotten,
    TResult? Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult? Function(_RetrieveGeometricCoordinates value)?
        retrieveGeometricCoordinates,
  }) {
    return retrieveGeometricCoordinates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutocompleteSearch value)? autocompleteSearch,
    TResult Function(_SearchAutocompleteGotten value)? searchAutocompleteGotten,
    TResult Function(_SearchAutocompleteNotGotten value)?
        searchAutocompleteNotGotten,
    TResult Function(_RetrieveGeometricCoordinates value)?
        retrieveGeometricCoordinates,
    required TResult orElse(),
  }) {
    if (retrieveGeometricCoordinates != null) {
      return retrieveGeometricCoordinates(this);
    }
    return orElse();
  }
}

abstract class _RetrieveGeometricCoordinates
    implements SearchAutocompleteEvent {
  const factory _RetrieveGeometricCoordinates(
      {required final String mapboxID}) = _$RetrieveGeometricCoordinatesImpl;

  String get mapboxID;
  @JsonKey(ignore: true)
  _$$RetrieveGeometricCoordinatesImplCopyWith<
          _$RetrieveGeometricCoordinatesImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(RetrieveResultEntity retrieveResultEntity)
        retrievedGeometricCoordinates,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToRetrieveGeometricCoordinates,
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
    TResult? Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
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
    TResult Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
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
    required TResult Function(_RetrievedGeometricCoordinates value)
        retrievedGeometricCoordinates,
    required TResult Function(_FailedToRetrievedGeometricCoordinates value)
        failedToRetrieveGeometricCoordinates,
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
    TResult? Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult? Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
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
    TResult Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
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
    required TResult Function(RetrieveResultEntity retrieveResultEntity)
        retrievedGeometricCoordinates,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToRetrieveGeometricCoordinates,
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
    TResult? Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
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
    TResult Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
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
    required TResult Function(_RetrievedGeometricCoordinates value)
        retrievedGeometricCoordinates,
    required TResult Function(_FailedToRetrievedGeometricCoordinates value)
        failedToRetrieveGeometricCoordinates,
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
    TResult? Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult? Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
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
    TResult Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
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
    required TResult Function(RetrieveResultEntity retrieveResultEntity)
        retrievedGeometricCoordinates,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToRetrieveGeometricCoordinates,
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
    TResult? Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
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
    TResult Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
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
    required TResult Function(_RetrievedGeometricCoordinates value)
        retrievedGeometricCoordinates,
    required TResult Function(_FailedToRetrievedGeometricCoordinates value)
        failedToRetrieveGeometricCoordinates,
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
    TResult? Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult? Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
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
    TResult Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
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
    required TResult Function(RetrieveResultEntity retrieveResultEntity)
        retrievedGeometricCoordinates,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToRetrieveGeometricCoordinates,
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
    TResult? Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
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
    TResult Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
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
    required TResult Function(_RetrievedGeometricCoordinates value)
        retrievedGeometricCoordinates,
    required TResult Function(_FailedToRetrievedGeometricCoordinates value)
        failedToRetrieveGeometricCoordinates,
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
    TResult? Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult? Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
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
    TResult Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
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
    required TResult Function(RetrieveResultEntity retrieveResultEntity)
        retrievedGeometricCoordinates,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToRetrieveGeometricCoordinates,
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
    TResult? Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
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
    TResult Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
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
    required TResult Function(_RetrievedGeometricCoordinates value)
        retrievedGeometricCoordinates,
    required TResult Function(_FailedToRetrievedGeometricCoordinates value)
        failedToRetrieveGeometricCoordinates,
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
    TResult? Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult? Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
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
    TResult Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
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

/// @nodoc
abstract class _$$RetrievedGeometricCoordinatesImplCopyWith<$Res> {
  factory _$$RetrievedGeometricCoordinatesImplCopyWith(
          _$RetrievedGeometricCoordinatesImpl value,
          $Res Function(_$RetrievedGeometricCoordinatesImpl) then) =
      __$$RetrievedGeometricCoordinatesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RetrieveResultEntity retrieveResultEntity});
}

/// @nodoc
class __$$RetrievedGeometricCoordinatesImplCopyWithImpl<$Res>
    extends _$SearchAutocompleteStateCopyWithImpl<$Res,
        _$RetrievedGeometricCoordinatesImpl>
    implements _$$RetrievedGeometricCoordinatesImplCopyWith<$Res> {
  __$$RetrievedGeometricCoordinatesImplCopyWithImpl(
      _$RetrievedGeometricCoordinatesImpl _value,
      $Res Function(_$RetrievedGeometricCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retrieveResultEntity = null,
  }) {
    return _then(_$RetrievedGeometricCoordinatesImpl(
      retrieveResultEntity: null == retrieveResultEntity
          ? _value.retrieveResultEntity
          : retrieveResultEntity // ignore: cast_nullable_to_non_nullable
              as RetrieveResultEntity,
    ));
  }
}

/// @nodoc

class _$RetrievedGeometricCoordinatesImpl
    implements _RetrievedGeometricCoordinates {
  const _$RetrievedGeometricCoordinatesImpl(
      {required this.retrieveResultEntity});

  @override
  final RetrieveResultEntity retrieveResultEntity;

  @override
  String toString() {
    return 'SearchAutocompleteState.retrievedGeometricCoordinates(retrieveResultEntity: $retrieveResultEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrievedGeometricCoordinatesImpl &&
            (identical(other.retrieveResultEntity, retrieveResultEntity) ||
                other.retrieveResultEntity == retrieveResultEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, retrieveResultEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrievedGeometricCoordinatesImplCopyWith<
          _$RetrievedGeometricCoordinatesImpl>
      get copyWith => __$$RetrievedGeometricCoordinatesImplCopyWithImpl<
          _$RetrievedGeometricCoordinatesImpl>(this, _$identity);

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
    required TResult Function(RetrieveResultEntity retrieveResultEntity)
        retrievedGeometricCoordinates,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToRetrieveGeometricCoordinates,
  }) {
    return retrievedGeometricCoordinates(retrieveResultEntity);
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
    TResult? Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
  }) {
    return retrievedGeometricCoordinates?.call(retrieveResultEntity);
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
    TResult Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
    required TResult orElse(),
  }) {
    if (retrievedGeometricCoordinates != null) {
      return retrievedGeometricCoordinates(retrieveResultEntity);
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
    required TResult Function(_RetrievedGeometricCoordinates value)
        retrievedGeometricCoordinates,
    required TResult Function(_FailedToRetrievedGeometricCoordinates value)
        failedToRetrieveGeometricCoordinates,
  }) {
    return retrievedGeometricCoordinates(this);
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
    TResult? Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult? Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
  }) {
    return retrievedGeometricCoordinates?.call(this);
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
    TResult Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
    required TResult orElse(),
  }) {
    if (retrievedGeometricCoordinates != null) {
      return retrievedGeometricCoordinates(this);
    }
    return orElse();
  }
}

abstract class _RetrievedGeometricCoordinates
    implements SearchAutocompleteState {
  const factory _RetrievedGeometricCoordinates(
          {required final RetrieveResultEntity retrieveResultEntity}) =
      _$RetrievedGeometricCoordinatesImpl;

  RetrieveResultEntity get retrieveResultEntity;
  @JsonKey(ignore: true)
  _$$RetrievedGeometricCoordinatesImplCopyWith<
          _$RetrievedGeometricCoordinatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToRetrievedGeometricCoordinatesImplCopyWith<$Res> {
  factory _$$FailedToRetrievedGeometricCoordinatesImplCopyWith(
          _$FailedToRetrievedGeometricCoordinatesImpl value,
          $Res Function(_$FailedToRetrievedGeometricCoordinatesImpl) then) =
      __$$FailedToRetrievedGeometricCoordinatesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchAutocompleteFailure searchAutocompleteFailure});
}

/// @nodoc
class __$$FailedToRetrievedGeometricCoordinatesImplCopyWithImpl<$Res>
    extends _$SearchAutocompleteStateCopyWithImpl<$Res,
        _$FailedToRetrievedGeometricCoordinatesImpl>
    implements _$$FailedToRetrievedGeometricCoordinatesImplCopyWith<$Res> {
  __$$FailedToRetrievedGeometricCoordinatesImplCopyWithImpl(
      _$FailedToRetrievedGeometricCoordinatesImpl _value,
      $Res Function(_$FailedToRetrievedGeometricCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchAutocompleteFailure = null,
  }) {
    return _then(_$FailedToRetrievedGeometricCoordinatesImpl(
      searchAutocompleteFailure: null == searchAutocompleteFailure
          ? _value.searchAutocompleteFailure
          : searchAutocompleteFailure // ignore: cast_nullable_to_non_nullable
              as SearchAutocompleteFailure,
    ));
  }
}

/// @nodoc

class _$FailedToRetrievedGeometricCoordinatesImpl
    implements _FailedToRetrievedGeometricCoordinates {
  const _$FailedToRetrievedGeometricCoordinatesImpl(
      {required this.searchAutocompleteFailure});

  @override
  final SearchAutocompleteFailure searchAutocompleteFailure;

  @override
  String toString() {
    return 'SearchAutocompleteState.failedToRetrieveGeometricCoordinates(searchAutocompleteFailure: $searchAutocompleteFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToRetrievedGeometricCoordinatesImpl &&
            (identical(other.searchAutocompleteFailure,
                    searchAutocompleteFailure) ||
                other.searchAutocompleteFailure == searchAutocompleteFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchAutocompleteFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToRetrievedGeometricCoordinatesImplCopyWith<
          _$FailedToRetrievedGeometricCoordinatesImpl>
      get copyWith => __$$FailedToRetrievedGeometricCoordinatesImplCopyWithImpl<
          _$FailedToRetrievedGeometricCoordinatesImpl>(this, _$identity);

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
    required TResult Function(RetrieveResultEntity retrieveResultEntity)
        retrievedGeometricCoordinates,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToRetrieveGeometricCoordinates,
  }) {
    return failedToRetrieveGeometricCoordinates(searchAutocompleteFailure);
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
    TResult? Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
  }) {
    return failedToRetrieveGeometricCoordinates
        ?.call(searchAutocompleteFailure);
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
    TResult Function(RetrieveResultEntity retrieveResultEntity)?
        retrievedGeometricCoordinates,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToRetrieveGeometricCoordinates,
    required TResult orElse(),
  }) {
    if (failedToRetrieveGeometricCoordinates != null) {
      return failedToRetrieveGeometricCoordinates(searchAutocompleteFailure);
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
    required TResult Function(_RetrievedGeometricCoordinates value)
        retrievedGeometricCoordinates,
    required TResult Function(_FailedToRetrievedGeometricCoordinates value)
        failedToRetrieveGeometricCoordinates,
  }) {
    return failedToRetrieveGeometricCoordinates(this);
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
    TResult? Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult? Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
  }) {
    return failedToRetrieveGeometricCoordinates?.call(this);
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
    TResult Function(_RetrievedGeometricCoordinates value)?
        retrievedGeometricCoordinates,
    TResult Function(_FailedToRetrievedGeometricCoordinates value)?
        failedToRetrieveGeometricCoordinates,
    required TResult orElse(),
  }) {
    if (failedToRetrieveGeometricCoordinates != null) {
      return failedToRetrieveGeometricCoordinates(this);
    }
    return orElse();
  }
}

abstract class _FailedToRetrievedGeometricCoordinates
    implements SearchAutocompleteState {
  const factory _FailedToRetrievedGeometricCoordinates(
          {required final SearchAutocompleteFailure
              searchAutocompleteFailure}) =
      _$FailedToRetrievedGeometricCoordinatesImpl;

  SearchAutocompleteFailure get searchAutocompleteFailure;
  @JsonKey(ignore: true)
  _$$FailedToRetrievedGeometricCoordinatesImplCopyWith<
          _$FailedToRetrievedGeometricCoordinatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
