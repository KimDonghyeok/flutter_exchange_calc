// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeImpl _$$ExchangeImplFromJson(Map<String, dynamic> json) =>
    _$ExchangeImpl(
      timeLastUpdateUnix: json['timeLastUpdateUnix'] as num?,
      timeLastUpdateUtc: json['timeLastUpdateUtc'] as String?,
      timeNextUpdateUnix: json['timeNextUpdateUnix'] as num?,
      timeNextUpdateUtc: json['timeNextUpdateUtc'] as String?,
      conversionRate: (json['conversionRate'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$ExchangeImplToJson(_$ExchangeImpl instance) =>
    <String, dynamic>{
      'timeLastUpdateUnix': instance.timeLastUpdateUnix,
      'timeLastUpdateUtc': instance.timeLastUpdateUtc,
      'timeNextUpdateUnix': instance.timeNextUpdateUnix,
      'timeNextUpdateUtc': instance.timeNextUpdateUtc,
      'conversionRate': instance.conversionRate,
    };
