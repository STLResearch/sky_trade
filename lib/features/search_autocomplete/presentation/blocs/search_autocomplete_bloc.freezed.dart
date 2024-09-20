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
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) autocompleteSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? autocompleteSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? autocompleteSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AutocompleteSearch value) autocompleteSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutocompleteSearch value)? autocompleteSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutocompleteSearch value)? autocompleteSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchAutocompleteEventCopyWith<SearchAutocompleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAutocompleteEventCopyWith<$Res> {
  factory $SearchAutocompleteEventCopyWith(SearchAutocompleteEvent value,
          $Res Function(SearchAutocompleteEvent) then) =
      _$SearchAutocompleteEventCopyWithImpl<$Res, SearchAutocompleteEvent>;
  @useResult
  $Res call({String query});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutocompleteSearchImplCopyWith<$Res>
    implements $SearchAutocompleteEventCopyWith<$Res> {
  factory _$$AutocompleteSearchImplCopyWith(_$AutocompleteSearchImpl value,
          $Res Function(_$AutocompleteSearchImpl) then) =
      __$$AutocompleteSearchImplCopyWithImpl<$Res>;
  @override
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
  }) {
    return autocompleteSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? autocompleteSearch,
  }) {
    return autocompleteSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? autocompleteSearch,
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
  }) {
    return autocompleteSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AutocompleteSearch value)? autocompleteSearch,
  }) {
    return autocompleteSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AutocompleteSearch value)? autocompleteSearch,
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

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$AutocompleteSearchImplCopyWith<_$AutocompleteSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchAutocompleteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingSearchAutocomplete,
    required TResult Function(List<SearchResultEntity> searchResultEntities)
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
    TResult? Function(List<SearchResultEntity> searchResultEntities)?
        gotSearchAutocomplete,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingSearchAutocomplete,
    TResult Function(List<SearchResultEntity> searchResultEntities)?
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
    required TResult Function(List<SearchResultEntity> searchResultEntities)
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
    TResult? Function(List<SearchResultEntity> searchResultEntities)?
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
    TResult Function(List<SearchResultEntity> searchResultEntities)?
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
    required TResult Function(List<SearchResultEntity> searchResultEntities)
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
    TResult? Function(List<SearchResultEntity> searchResultEntities)?
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
    TResult Function(List<SearchResultEntity> searchResultEntities)?
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
  $Res call({List<SearchResultEntity> searchResultEntities});
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
    Object? searchResultEntities = null,
  }) {
    return _then(_$GotSearchAutocompleteImpl(
      searchResultEntities: null == searchResultEntities
          ? _value._searchResultEntities
          : searchResultEntities // ignore: cast_nullable_to_non_nullable
              as List<SearchResultEntity>,
    ));
  }
}

/// @nodoc

class _$GotSearchAutocompleteImpl implements _GotSearchAutocomplete {
  const _$GotSearchAutocompleteImpl(
      {required final List<SearchResultEntity> searchResultEntities})
      : _searchResultEntities = searchResultEntities;

  final List<SearchResultEntity> _searchResultEntities;
  @override
  List<SearchResultEntity> get searchResultEntities {
    if (_searchResultEntities is EqualUnmodifiableListView)
      return _searchResultEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultEntities);
  }

  @override
  String toString() {
    return 'SearchAutocompleteState.gotSearchAutocomplete(searchResultEntities: $searchResultEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotSearchAutocompleteImpl &&
            const DeepCollectionEquality()
                .equals(other._searchResultEntities, _searchResultEntities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchResultEntities));

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
    required TResult Function(List<SearchResultEntity> searchResultEntities)
        gotSearchAutocomplete,
    required TResult Function(
            SearchAutocompleteFailure searchAutocompleteFailure)
        failedToGetSearchAutocomplete,
  }) {
    return gotSearchAutocomplete(searchResultEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingSearchAutocomplete,
    TResult? Function(List<SearchResultEntity> searchResultEntities)?
        gotSearchAutocomplete,
    TResult? Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
  }) {
    return gotSearchAutocomplete?.call(searchResultEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingSearchAutocomplete,
    TResult Function(List<SearchResultEntity> searchResultEntities)?
        gotSearchAutocomplete,
    TResult Function(SearchAutocompleteFailure searchAutocompleteFailure)?
        failedToGetSearchAutocomplete,
    required TResult orElse(),
  }) {
    if (gotSearchAutocomplete != null) {
      return gotSearchAutocomplete(searchResultEntities);
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
          {required final List<SearchResultEntity> searchResultEntities}) =
      _$GotSearchAutocompleteImpl;

  List<SearchResultEntity> get searchResultEntities;
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
    required TResult Function(List<SearchResultEntity> searchResultEntities)
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
    TResult? Function(List<SearchResultEntity> searchResultEntities)?
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
    TResult Function(List<SearchResultEntity> searchResultEntities)?
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
