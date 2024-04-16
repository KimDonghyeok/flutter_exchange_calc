import 'package:flutter_exchange_calc/data/dto/exchange_dto_mapper.dart';
import 'package:flutter_exchange_calc/data/model/exchange.dart';

import '../data_source/exchange_data_source.dart';
import 'exchange_data_repository.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeDataSource _dataSource;

  ExchangeRepositoryImpl(ExchangeDataSource dataSource)
      : _dataSource = dataSource;

  @override
  Future<Exchange?> getExchangeRateData(String keyword) async {
    final dto = await _dataSource.fetchExchangeRateData(keyword);
    Exchange? result;
    if (dto.conversionRateDto != null) {
      result = dto.toExchange();
    }
    return result;
  }
}
