import '../model/exchange.dart';

abstract interface class ExchangeRepository {
  Future<Exchange?> getExchangeRateData(String keyword);
}