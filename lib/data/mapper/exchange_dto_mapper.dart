import 'package:flutter_exchange_calc/data/dto/exchange_dto.dart';

import '../model/exchange.dart';

extension ExchangeDtoMapper on ExchangeDto {
  Exchange toExchange() {
    final rateMap = <String, double>{};
    (conversionRateDto as Map<String, dynamic>).forEach((key, value) => rateMap[key] = double.tryParse(value.toString()) ?? -1.0);

    return Exchange(timeLastUpdateUnix: timeLastUpdateUnix,
        timeLastUpdateUtc: timeLastUpdateUtc,
        timeNextUpdateUnix: timeNextUpdateUnix,
        timeNextUpdateUtc: timeNextUpdateUtc,
        conversionRate: rateMap);
  }

}