import 'dart:convert';

import 'package:flutter_exchange_calc/data/dto/exchange_dto.dart';
import 'package:http/http.dart' as http;
import 'exchange_data_source.dart';

const String _key = '4b3a3dbbbbd439a2527e41fa';

class ExchangeDataSourceImpl implements ExchangeDataSource {
  String _baseUri(String key) =>
      'https://v6.exchangerate-api.com/v6/$key/latest';

  @override
  Future<ExchangeDto> fetchExchangeRateData(String keyword) async {
    final response = await http.get(Uri.parse('${_baseUri(_key)}/$keyword'));
    return ExchangeDto.fromJson(jsonDecode(response.body));
  }
}
