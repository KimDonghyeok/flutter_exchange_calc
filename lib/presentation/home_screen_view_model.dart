import 'package:flutter/cupertino.dart';
import 'package:flutter_exchange_calc/data/model/exchange.dart';
import 'package:flutter_exchange_calc/data/repository/exchange_data_repository.dart';

import '../data/model/currency.dart';

class HomeScreenViewModel with ChangeNotifier {
  final ExchangeRepository _repository;

  HomeScreenViewModel({required ExchangeRepository repository})
      : _repository = repository {
    getExchangeRateData('USD');
  }

  Exchange? _exchangeRateData;

  String _fromValue = '';
  String _toValue = '';

  Currency _fromCurrency = Currency.USD;
  Currency _toCurrency = Currency.KRW;

  String get fromValue => _fromValue;

  String get toValue => _toValue;

  Currency get fromCurrency => _fromCurrency;

  Currency get toCurrency => _toCurrency;

  String get updateDate =>
      _exchangeRateData?.timeLastUpdateUtc ?? '서버에서 환율 데이터를 받아올 수 없습니다.';

  Future<void> getExchangeRateData(String currency) async {
    _exchangeRateData = await _repository.getExchangeRateData(currency);
    notifyListeners();
  }

  void changeFromValue(String value) {
    if (_exchangeRateData == null) return;
    if (value == '') {
      _toValue = '';
      notifyListeners();
      return;
    }

    _fromValue = value;
    final numFromValue = double.parse(value);
    _toValue = ((_exchangeRateData!.conversionRate[_toCurrency.label] ?? 1) *
            numFromValue /
            (_exchangeRateData!.conversionRate[_fromCurrency.label] ?? 1))
        .toStringAsFixed(2)
        .replaceAll('.00', '');

    notifyListeners();
  }

  void changeToValue(String value) {
    if (_exchangeRateData == null) return;
    if (value == '') {
      _fromValue = '';
      notifyListeners();
      return;
    }

    _toValue = value;
    final numToValue = double.parse(value);
    _fromValue =
        ((_exchangeRateData!.conversionRate[_fromCurrency.label] ?? 1) *
                numToValue /
                (_exchangeRateData!.conversionRate[_toCurrency.label] ?? 1))
            .toStringAsFixed(2)
            .replaceAll('.00', '');
    notifyListeners();
  }

  void changeFromCurrency(Currency value) {
    _fromCurrency = value;
    final numFromValue = num.parse(_fromValue);
    _toValue = ((_exchangeRateData!.conversionRate[_toCurrency.label] ?? 1) *
            numFromValue /
            (_exchangeRateData!.conversionRate[_fromCurrency.label] ?? 1))
        .toStringAsFixed(2)
        .replaceAll('.00', '');
    notifyListeners();
  }

  void changeToCurrency(Currency value) {
    _toCurrency = value;
    final numFromValue = num.parse(_fromValue);
    _toValue = ((_exchangeRateData!.conversionRate[_toCurrency.label] ?? 1) *
            numFromValue /
            (_exchangeRateData!.conversionRate[_fromCurrency.label] ?? 1))
        .toStringAsFixed(2)
        .replaceAll('.00', '');
    notifyListeners();
  }
}
