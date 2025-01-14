// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_resend_timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpResendTimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countdown,
    required TResult Function(int minutesLeft, int secondsLeft) tick,
    required TResult Function() elapse,
    required TResult Function() dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? countdown,
    TResult? Function(int minutesLeft, int secondsLeft)? tick,
    TResult? Function()? elapse,
    TResult? Function()? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countdown,
    TResult Function(int minutesLeft, int secondsLeft)? tick,
    TResult Function()? elapse,
    TResult Function()? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Countdown value) countdown,
    required TResult Function(_Tick value) tick,
    required TResult Function(_Elapse value) elapse,
    required TResult Function(_Dispose value) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Countdown value)? countdown,
    TResult? Function(_Tick value)? tick,
    TResult? Function(_Elapse value)? elapse,
    TResult? Function(_Dispose value)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Countdown value)? countdown,
    TResult Function(_Tick value)? tick,
    TResult Function(_Elapse value)? elapse,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpResendTimerEventCopyWith<$Res> {
  factory $OtpResendTimerEventCopyWith(
          OtpResendTimerEvent value, $Res Function(OtpResendTimerEvent) then) =
      _$OtpResendTimerEventCopyWithImpl<$Res, OtpResendTimerEvent>;
}

/// @nodoc
class _$OtpResendTimerEventCopyWithImpl<$Res, $Val extends OtpResendTimerEvent>
    implements $OtpResendTimerEventCopyWith<$Res> {
  _$OtpResendTimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CountdownImplCopyWith<$Res> {
  factory _$$CountdownImplCopyWith(
          _$CountdownImpl value, $Res Function(_$CountdownImpl) then) =
      __$$CountdownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountdownImplCopyWithImpl<$Res>
    extends _$OtpResendTimerEventCopyWithImpl<$Res, _$CountdownImpl>
    implements _$$CountdownImplCopyWith<$Res> {
  __$$CountdownImplCopyWithImpl(
      _$CountdownImpl _value, $Res Function(_$CountdownImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountdownImpl implements _Countdown {
  const _$CountdownImpl();

  @override
  String toString() {
    return 'OtpResendTimerEvent.countdown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountdownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countdown,
    required TResult Function(int minutesLeft, int secondsLeft) tick,
    required TResult Function() elapse,
    required TResult Function() dispose,
  }) {
    return countdown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? countdown,
    TResult? Function(int minutesLeft, int secondsLeft)? tick,
    TResult? Function()? elapse,
    TResult? Function()? dispose,
  }) {
    return countdown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countdown,
    TResult Function(int minutesLeft, int secondsLeft)? tick,
    TResult Function()? elapse,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (countdown != null) {
      return countdown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Countdown value) countdown,
    required TResult Function(_Tick value) tick,
    required TResult Function(_Elapse value) elapse,
    required TResult Function(_Dispose value) dispose,
  }) {
    return countdown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Countdown value)? countdown,
    TResult? Function(_Tick value)? tick,
    TResult? Function(_Elapse value)? elapse,
    TResult? Function(_Dispose value)? dispose,
  }) {
    return countdown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Countdown value)? countdown,
    TResult Function(_Tick value)? tick,
    TResult Function(_Elapse value)? elapse,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) {
    if (countdown != null) {
      return countdown(this);
    }
    return orElse();
  }
}

abstract class _Countdown implements OtpResendTimerEvent {
  const factory _Countdown() = _$CountdownImpl;
}

/// @nodoc
abstract class _$$TickImplCopyWith<$Res> {
  factory _$$TickImplCopyWith(
          _$TickImpl value, $Res Function(_$TickImpl) then) =
      __$$TickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int minutesLeft, int secondsLeft});
}

/// @nodoc
class __$$TickImplCopyWithImpl<$Res>
    extends _$OtpResendTimerEventCopyWithImpl<$Res, _$TickImpl>
    implements _$$TickImplCopyWith<$Res> {
  __$$TickImplCopyWithImpl(_$TickImpl _value, $Res Function(_$TickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutesLeft = null,
    Object? secondsLeft = null,
  }) {
    return _then(_$TickImpl(
      minutesLeft: null == minutesLeft
          ? _value.minutesLeft
          : minutesLeft // ignore: cast_nullable_to_non_nullable
              as int,
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TickImpl implements _Tick {
  const _$TickImpl({required this.minutesLeft, required this.secondsLeft});

  @override
  final int minutesLeft;
  @override
  final int secondsLeft;

  @override
  String toString() {
    return 'OtpResendTimerEvent.tick(minutesLeft: $minutesLeft, secondsLeft: $secondsLeft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TickImpl &&
            (identical(other.minutesLeft, minutesLeft) ||
                other.minutesLeft == minutesLeft) &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minutesLeft, secondsLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TickImplCopyWith<_$TickImpl> get copyWith =>
      __$$TickImplCopyWithImpl<_$TickImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countdown,
    required TResult Function(int minutesLeft, int secondsLeft) tick,
    required TResult Function() elapse,
    required TResult Function() dispose,
  }) {
    return tick(minutesLeft, secondsLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? countdown,
    TResult? Function(int minutesLeft, int secondsLeft)? tick,
    TResult? Function()? elapse,
    TResult? Function()? dispose,
  }) {
    return tick?.call(minutesLeft, secondsLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countdown,
    TResult Function(int minutesLeft, int secondsLeft)? tick,
    TResult Function()? elapse,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(minutesLeft, secondsLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Countdown value) countdown,
    required TResult Function(_Tick value) tick,
    required TResult Function(_Elapse value) elapse,
    required TResult Function(_Dispose value) dispose,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Countdown value)? countdown,
    TResult? Function(_Tick value)? tick,
    TResult? Function(_Elapse value)? elapse,
    TResult? Function(_Dispose value)? dispose,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Countdown value)? countdown,
    TResult Function(_Tick value)? tick,
    TResult Function(_Elapse value)? elapse,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class _Tick implements OtpResendTimerEvent {
  const factory _Tick(
      {required final int minutesLeft,
      required final int secondsLeft}) = _$TickImpl;

  int get minutesLeft;
  int get secondsLeft;
  @JsonKey(ignore: true)
  _$$TickImplCopyWith<_$TickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ElapseImplCopyWith<$Res> {
  factory _$$ElapseImplCopyWith(
          _$ElapseImpl value, $Res Function(_$ElapseImpl) then) =
      __$$ElapseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ElapseImplCopyWithImpl<$Res>
    extends _$OtpResendTimerEventCopyWithImpl<$Res, _$ElapseImpl>
    implements _$$ElapseImplCopyWith<$Res> {
  __$$ElapseImplCopyWithImpl(
      _$ElapseImpl _value, $Res Function(_$ElapseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ElapseImpl implements _Elapse {
  const _$ElapseImpl();

  @override
  String toString() {
    return 'OtpResendTimerEvent.elapse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ElapseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countdown,
    required TResult Function(int minutesLeft, int secondsLeft) tick,
    required TResult Function() elapse,
    required TResult Function() dispose,
  }) {
    return elapse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? countdown,
    TResult? Function(int minutesLeft, int secondsLeft)? tick,
    TResult? Function()? elapse,
    TResult? Function()? dispose,
  }) {
    return elapse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countdown,
    TResult Function(int minutesLeft, int secondsLeft)? tick,
    TResult Function()? elapse,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (elapse != null) {
      return elapse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Countdown value) countdown,
    required TResult Function(_Tick value) tick,
    required TResult Function(_Elapse value) elapse,
    required TResult Function(_Dispose value) dispose,
  }) {
    return elapse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Countdown value)? countdown,
    TResult? Function(_Tick value)? tick,
    TResult? Function(_Elapse value)? elapse,
    TResult? Function(_Dispose value)? dispose,
  }) {
    return elapse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Countdown value)? countdown,
    TResult Function(_Tick value)? tick,
    TResult Function(_Elapse value)? elapse,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) {
    if (elapse != null) {
      return elapse(this);
    }
    return orElse();
  }
}

abstract class _Elapse implements OtpResendTimerEvent {
  const factory _Elapse() = _$ElapseImpl;
}

/// @nodoc
abstract class _$$DisposeImplCopyWith<$Res> {
  factory _$$DisposeImplCopyWith(
          _$DisposeImpl value, $Res Function(_$DisposeImpl) then) =
      __$$DisposeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeImplCopyWithImpl<$Res>
    extends _$OtpResendTimerEventCopyWithImpl<$Res, _$DisposeImpl>
    implements _$$DisposeImplCopyWith<$Res> {
  __$$DisposeImplCopyWithImpl(
      _$DisposeImpl _value, $Res Function(_$DisposeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisposeImpl implements _Dispose {
  const _$DisposeImpl();

  @override
  String toString() {
    return 'OtpResendTimerEvent.dispose()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisposeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countdown,
    required TResult Function(int minutesLeft, int secondsLeft) tick,
    required TResult Function() elapse,
    required TResult Function() dispose,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? countdown,
    TResult? Function(int minutesLeft, int secondsLeft)? tick,
    TResult? Function()? elapse,
    TResult? Function()? dispose,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countdown,
    TResult Function(int minutesLeft, int secondsLeft)? tick,
    TResult Function()? elapse,
    TResult Function()? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Countdown value) countdown,
    required TResult Function(_Tick value) tick,
    required TResult Function(_Elapse value) elapse,
    required TResult Function(_Dispose value) dispose,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Countdown value)? countdown,
    TResult? Function(_Tick value)? tick,
    TResult? Function(_Elapse value)? elapse,
    TResult? Function(_Dispose value)? dispose,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Countdown value)? countdown,
    TResult Function(_Tick value)? tick,
    TResult Function(_Elapse value)? elapse,
    TResult Function(_Dispose value)? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class _Dispose implements OtpResendTimerEvent {
  const factory _Dispose() = _$DisposeImpl;
}

/// @nodoc
mixin _$OtpResendTimerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int minutesLeft, int secondsLeft) ticked,
    required TResult Function() elapsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int minutesLeft, int secondsLeft)? ticked,
    TResult? Function()? elapsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int minutesLeft, int secondsLeft)? ticked,
    TResult Function()? elapsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_Elapsed value) elapsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ticked value)? ticked,
    TResult? Function(_Elapsed value)? elapsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_Elapsed value)? elapsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpResendTimerStateCopyWith<$Res> {
  factory $OtpResendTimerStateCopyWith(
          OtpResendTimerState value, $Res Function(OtpResendTimerState) then) =
      _$OtpResendTimerStateCopyWithImpl<$Res, OtpResendTimerState>;
}

/// @nodoc
class _$OtpResendTimerStateCopyWithImpl<$Res, $Val extends OtpResendTimerState>
    implements $OtpResendTimerStateCopyWith<$Res> {
  _$OtpResendTimerStateCopyWithImpl(this._value, this._then);

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
    extends _$OtpResendTimerStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'OtpResendTimerState.initial()';
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
    required TResult Function(int minutesLeft, int secondsLeft) ticked,
    required TResult Function() elapsed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int minutesLeft, int secondsLeft)? ticked,
    TResult? Function()? elapsed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int minutesLeft, int secondsLeft)? ticked,
    TResult Function()? elapsed,
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
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_Elapsed value) elapsed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ticked value)? ticked,
    TResult? Function(_Elapsed value)? elapsed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_Elapsed value)? elapsed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OtpResendTimerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TickedImplCopyWith<$Res> {
  factory _$$TickedImplCopyWith(
          _$TickedImpl value, $Res Function(_$TickedImpl) then) =
      __$$TickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int minutesLeft, int secondsLeft});
}

/// @nodoc
class __$$TickedImplCopyWithImpl<$Res>
    extends _$OtpResendTimerStateCopyWithImpl<$Res, _$TickedImpl>
    implements _$$TickedImplCopyWith<$Res> {
  __$$TickedImplCopyWithImpl(
      _$TickedImpl _value, $Res Function(_$TickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutesLeft = null,
    Object? secondsLeft = null,
  }) {
    return _then(_$TickedImpl(
      minutesLeft: null == minutesLeft
          ? _value.minutesLeft
          : minutesLeft // ignore: cast_nullable_to_non_nullable
              as int,
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TickedImpl implements _Ticked {
  const _$TickedImpl({required this.minutesLeft, required this.secondsLeft});

  @override
  final int minutesLeft;
  @override
  final int secondsLeft;

  @override
  String toString() {
    return 'OtpResendTimerState.ticked(minutesLeft: $minutesLeft, secondsLeft: $secondsLeft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TickedImpl &&
            (identical(other.minutesLeft, minutesLeft) ||
                other.minutesLeft == minutesLeft) &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minutesLeft, secondsLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TickedImplCopyWith<_$TickedImpl> get copyWith =>
      __$$TickedImplCopyWithImpl<_$TickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int minutesLeft, int secondsLeft) ticked,
    required TResult Function() elapsed,
  }) {
    return ticked(minutesLeft, secondsLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int minutesLeft, int secondsLeft)? ticked,
    TResult? Function()? elapsed,
  }) {
    return ticked?.call(minutesLeft, secondsLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int minutesLeft, int secondsLeft)? ticked,
    TResult Function()? elapsed,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(minutesLeft, secondsLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_Elapsed value) elapsed,
  }) {
    return ticked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ticked value)? ticked,
    TResult? Function(_Elapsed value)? elapsed,
  }) {
    return ticked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_Elapsed value)? elapsed,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(this);
    }
    return orElse();
  }
}

abstract class _Ticked implements OtpResendTimerState {
  const factory _Ticked(
      {required final int minutesLeft,
      required final int secondsLeft}) = _$TickedImpl;

  int get minutesLeft;
  int get secondsLeft;
  @JsonKey(ignore: true)
  _$$TickedImplCopyWith<_$TickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ElapsedImplCopyWith<$Res> {
  factory _$$ElapsedImplCopyWith(
          _$ElapsedImpl value, $Res Function(_$ElapsedImpl) then) =
      __$$ElapsedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ElapsedImplCopyWithImpl<$Res>
    extends _$OtpResendTimerStateCopyWithImpl<$Res, _$ElapsedImpl>
    implements _$$ElapsedImplCopyWith<$Res> {
  __$$ElapsedImplCopyWithImpl(
      _$ElapsedImpl _value, $Res Function(_$ElapsedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ElapsedImpl implements _Elapsed {
  const _$ElapsedImpl();

  @override
  String toString() {
    return 'OtpResendTimerState.elapsed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ElapsedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int minutesLeft, int secondsLeft) ticked,
    required TResult Function() elapsed,
  }) {
    return elapsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int minutesLeft, int secondsLeft)? ticked,
    TResult? Function()? elapsed,
  }) {
    return elapsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int minutesLeft, int secondsLeft)? ticked,
    TResult Function()? elapsed,
    required TResult orElse(),
  }) {
    if (elapsed != null) {
      return elapsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ticked value) ticked,
    required TResult Function(_Elapsed value) elapsed,
  }) {
    return elapsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ticked value)? ticked,
    TResult? Function(_Elapsed value)? elapsed,
  }) {
    return elapsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ticked value)? ticked,
    TResult Function(_Elapsed value)? elapsed,
    required TResult orElse(),
  }) {
    if (elapsed != null) {
      return elapsed(this);
    }
    return orElse();
  }
}

abstract class _Elapsed implements OtpResendTimerState {
  const factory _Elapsed() = _$ElapsedImpl;
}
