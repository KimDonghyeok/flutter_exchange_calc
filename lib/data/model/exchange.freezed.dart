// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Exchange _$ExchangeFromJson(Map<String, dynamic> json) {
  return _Exchange.fromJson(json);
}

/// @nodoc
mixin _$Exchange {
  num? get timeLastUpdateUnix => throw _privateConstructorUsedError;
  String? get timeLastUpdateUtc => throw _privateConstructorUsedError;
  num? get timeNextUpdateUnix => throw _privateConstructorUsedError;
  String? get timeNextUpdateUtc => throw _privateConstructorUsedError;
  Map<String, double> get conversionRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeCopyWith<Exchange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeCopyWith<$Res> {
  factory $ExchangeCopyWith(Exchange value, $Res Function(Exchange) then) =
      _$ExchangeCopyWithImpl<$Res, Exchange>;
  @useResult
  $Res call(
      {num? timeLastUpdateUnix,
      String? timeLastUpdateUtc,
      num? timeNextUpdateUnix,
      String? timeNextUpdateUtc,
      Map<String, double> conversionRate});
}

/// @nodoc
class _$ExchangeCopyWithImpl<$Res, $Val extends Exchange>
    implements $ExchangeCopyWith<$Res> {
  _$ExchangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLastUpdateUnix = freezed,
    Object? timeLastUpdateUtc = freezed,
    Object? timeNextUpdateUnix = freezed,
    Object? timeNextUpdateUtc = freezed,
    Object? conversionRate = null,
  }) {
    return _then(_value.copyWith(
      timeLastUpdateUnix: freezed == timeLastUpdateUnix
          ? _value.timeLastUpdateUnix
          : timeLastUpdateUnix // ignore: cast_nullable_to_non_nullable
              as num?,
      timeLastUpdateUtc: freezed == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      timeNextUpdateUnix: freezed == timeNextUpdateUnix
          ? _value.timeNextUpdateUnix
          : timeNextUpdateUnix // ignore: cast_nullable_to_non_nullable
              as num?,
      timeNextUpdateUtc: freezed == timeNextUpdateUtc
          ? _value.timeNextUpdateUtc
          : timeNextUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      conversionRate: null == conversionRate
          ? _value.conversionRate
          : conversionRate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExchangeImplCopyWith<$Res>
    implements $ExchangeCopyWith<$Res> {
  factory _$$ExchangeImplCopyWith(
          _$ExchangeImpl value, $Res Function(_$ExchangeImpl) then) =
      __$$ExchangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? timeLastUpdateUnix,
      String? timeLastUpdateUtc,
      num? timeNextUpdateUnix,
      String? timeNextUpdateUtc,
      Map<String, double> conversionRate});
}

/// @nodoc
class __$$ExchangeImplCopyWithImpl<$Res>
    extends _$ExchangeCopyWithImpl<$Res, _$ExchangeImpl>
    implements _$$ExchangeImplCopyWith<$Res> {
  __$$ExchangeImplCopyWithImpl(
      _$ExchangeImpl _value, $Res Function(_$ExchangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeLastUpdateUnix = freezed,
    Object? timeLastUpdateUtc = freezed,
    Object? timeNextUpdateUnix = freezed,
    Object? timeNextUpdateUtc = freezed,
    Object? conversionRate = null,
  }) {
    return _then(_$ExchangeImpl(
      timeLastUpdateUnix: freezed == timeLastUpdateUnix
          ? _value.timeLastUpdateUnix
          : timeLastUpdateUnix // ignore: cast_nullable_to_non_nullable
              as num?,
      timeLastUpdateUtc: freezed == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      timeNextUpdateUnix: freezed == timeNextUpdateUnix
          ? _value.timeNextUpdateUnix
          : timeNextUpdateUnix // ignore: cast_nullable_to_non_nullable
              as num?,
      timeNextUpdateUtc: freezed == timeNextUpdateUtc
          ? _value.timeNextUpdateUtc
          : timeNextUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      conversionRate: null == conversionRate
          ? _value._conversionRate
          : conversionRate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExchangeImpl implements _Exchange {
  const _$ExchangeImpl(
      {required this.timeLastUpdateUnix,
      required this.timeLastUpdateUtc,
      required this.timeNextUpdateUnix,
      required this.timeNextUpdateUtc,
      required final Map<String, double> conversionRate})
      : _conversionRate = conversionRate;

  factory _$ExchangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeImplFromJson(json);

  @override
  final num? timeLastUpdateUnix;
  @override
  final String? timeLastUpdateUtc;
  @override
  final num? timeNextUpdateUnix;
  @override
  final String? timeNextUpdateUtc;
  final Map<String, double> _conversionRate;
  @override
  Map<String, double> get conversionRate {
    if (_conversionRate is EqualUnmodifiableMapView) return _conversionRate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conversionRate);
  }

  @override
  String toString() {
    return 'Exchange(timeLastUpdateUnix: $timeLastUpdateUnix, timeLastUpdateUtc: $timeLastUpdateUtc, timeNextUpdateUnix: $timeNextUpdateUnix, timeNextUpdateUtc: $timeNextUpdateUtc, conversionRate: $conversionRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeImpl &&
            (identical(other.timeLastUpdateUnix, timeLastUpdateUnix) ||
                other.timeLastUpdateUnix == timeLastUpdateUnix) &&
            (identical(other.timeLastUpdateUtc, timeLastUpdateUtc) ||
                other.timeLastUpdateUtc == timeLastUpdateUtc) &&
            (identical(other.timeNextUpdateUnix, timeNextUpdateUnix) ||
                other.timeNextUpdateUnix == timeNextUpdateUnix) &&
            (identical(other.timeNextUpdateUtc, timeNextUpdateUtc) ||
                other.timeNextUpdateUtc == timeNextUpdateUtc) &&
            const DeepCollectionEquality()
                .equals(other._conversionRate, _conversionRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timeLastUpdateUnix,
      timeLastUpdateUtc,
      timeNextUpdateUnix,
      timeNextUpdateUtc,
      const DeepCollectionEquality().hash(_conversionRate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeImplCopyWith<_$ExchangeImpl> get copyWith =>
      __$$ExchangeImplCopyWithImpl<_$ExchangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeImplToJson(
      this,
    );
  }
}

abstract class _Exchange implements Exchange {
  const factory _Exchange(
      {required final num? timeLastUpdateUnix,
      required final String? timeLastUpdateUtc,
      required final num? timeNextUpdateUnix,
      required final String? timeNextUpdateUtc,
      required final Map<String, double> conversionRate}) = _$ExchangeImpl;

  factory _Exchange.fromJson(Map<String, dynamic> json) =
      _$ExchangeImpl.fromJson;

  @override
  num? get timeLastUpdateUnix;
  @override
  String? get timeLastUpdateUtc;
  @override
  num? get timeNextUpdateUnix;
  @override
  String? get timeNextUpdateUtc;
  @override
  Map<String, double> get conversionRate;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeImplCopyWith<_$ExchangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
