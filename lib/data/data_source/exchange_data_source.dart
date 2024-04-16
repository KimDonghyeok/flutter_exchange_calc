import 'package:flutter_exchange_calc/data/dto/exchange_dto.dart';

abstract interface class ExchangeDataSource {
  Future<ExchangeDto> fetchExchangeRateData(String keyword);
}
