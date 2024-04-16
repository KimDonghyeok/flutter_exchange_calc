import 'package:flutter_exchange_calc/data/model/conversion_rate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange.freezed.dart';
part 'exchange.g.dart';

@freezed
class Exchange with _$Exchange {
  const factory Exchange({
    required num? timeLastUpdateUnix,
    required String? timeLastUpdateUtc,
    required num? timeNextUpdateUnix,
    required String? timeNextUpdateUtc,
    required ConversionRate conversionRate,
  }) = _Exchange;

  factory Exchange.fromJson(Map<String, Object?> json) =>
      _$ExchangeFromJson(json);
}
