import 'package:flutter/cupertino.dart';
import 'package:flutter_exchange_calc/data/model/exchange.dart';
import 'package:flutter_exchange_calc/data/repository/exchange_data_repository.dart';

import '../data/model/currency.dart';

class HomeScreenViewModel with ChangeNotifier {
  final ExchangeRepository _repository;
  Exchange? _exchangeRateData;

  num _fromValue = 0;
  num _toValue = 0;

  Currency _fromCurrency = Currency.KRW;
  Currency _toCurrency = Currency.USD;

  HomeScreenViewModel({required ExchangeRepository repository})
      : _repository = repository {
    getExchangeRateData('USD');
  }

  get fromValue => _fromValue;

  get toValue => _toValue;

  get fromCurrency => _fromCurrency;

  get toCurrency => _toCurrency;

  get updateDate =>
      _exchangeRateData?.timeLastUpdateUtc ?? '서버에서 환율 데이터를 받아올 수 없습니다.';

  Future<void> getExchangeRateData(String currency) async {
    _exchangeRateData = await _repository.getExchangeRateData(currency);
  }

  void changeFromValue(String value) {
    if (_exchangeRateData == null) return;
    _fromValue = int.tryParse(value) ?? 0;
    _toValue = (_exchangeRateData!.conversionRate[_toCurrency.label] ?? 1) *
        _fromValue /
        (_exchangeRateData!.conversionRate[_fromCurrency.label] ?? 1);
    notifyListeners();
  }

  void changeToValue(String value) {
    if (_exchangeRateData == null) return;
    _toValue = int.tryParse(value) ?? 0;
    _fromValue = (_exchangeRateData!.conversionRate[_fromCurrency.label] ?? 1) *
        _toValue /
        (_exchangeRateData!.conversionRate[_toCurrency.label] ?? 1);
    notifyListeners();
  }

  void changeFromCurrency(Currency value) {
    _fromCurrency = value;
    _toValue = (_exchangeRateData!.conversionRate[_toCurrency.label] ?? 1) *
        _fromValue /
        (_exchangeRateData!.conversionRate[_fromCurrency.label] ?? 1);
    notifyListeners();
  }

  void changeToCurrency(Currency value) {
    _toCurrency = value;
    _fromValue = (_exchangeRateData!.conversionRate[_fromCurrency.label] ?? 1) *
        _toValue /
        (_exchangeRateData!.conversionRate[_toCurrency.label] ?? 1);
    notifyListeners();
  }
}
