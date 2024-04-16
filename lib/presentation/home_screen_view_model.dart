import 'package:flutter/cupertino.dart';
import 'package:flutter_exchange_calc/data/model/exchange.dart';
import 'package:flutter_exchange_calc/data/repository/exchange_data_repository.dart';

import '../data/model/currency.dart';

class SimpleNotifier<T> extends ValueNotifier<T> {
  SimpleNotifier(super.defaultValue);
}

class HomeScreenViewModel with ChangeNotifier {
  final ExchangeRepository _repository;
  Exchange? _exchangeRateData;

  SimpleNotifier<String> _fromValue = SimpleNotifier('');
  SimpleNotifier<String> _toValue = SimpleNotifier('');

  Currency _fromCurrency = Currency.KRW;
  Currency _toCurrency = Currency.USD;

  HomeScreenViewModel({required ExchangeRepository repository})
      : _repository = repository {
    getExchangeRateData('USD');
  }

  SimpleNotifier<String> get fromValue => _fromValue;

  SimpleNotifier<String> get toValue => _toValue;

  Currency get fromCurrency => _fromCurrency;

  Currency get toCurrency => _toCurrency;

  String get updateDate =>
      _exchangeRateData?.timeLastUpdateUtc?.substring(0, _exchangeRateData?.timeLastUpdateUtc?.indexOf('+')) ?? '서버에서 환율 데이터를 받아올 수 없습니다.';

  Future<void> getExchangeRateData(String currency) async {
    _exchangeRateData = await _repository.getExchangeRateData(currency);
    notifyListeners();
  }

  void changeValues({String? from, String? to}) {
    if (from != null) {
      _toValue.value =
          ((_exchangeRateData!.conversionRate[_toCurrency.label] ?? 1) *
                  (double.tryParse(from) ?? 0) /
                  (_exchangeRateData!.conversionRate[_fromCurrency.label] ?? 1))
              .toStringAsFixed(2).replaceAll('.00', '');
      return;
    }
    if (to != null) {
      _fromValue.value =
          ((_exchangeRateData!.conversionRate[_fromCurrency.label] ?? 1) *
                  (double.tryParse(to) ?? 0) /
                  (_exchangeRateData!.conversionRate[_toCurrency.label] ?? 1))
              .toStringAsFixed(2).replaceAll('.00', '');
      return;
    }
  }

  void changeFromValue(String value) {
    if (_exchangeRateData == null) return;
    changeValues(from: value);
  }

  void changeToValue(String value) {
    if (_exchangeRateData == null) return;
    changeValues(to: value);
  }

  void changeFromCurrency(Currency value, String from, String to) {
    _fromCurrency = value;
    notifyListeners();
    _fromValue.value = from;
    _toValue.value = to;
    changeValues(from: from);
  }

  void changeToCurrency(Currency value, String from, String to) {
    _toCurrency = value;
    notifyListeners();
    _fromValue.value = from;
    _toValue.value = to;
    changeValues(from: from);
  }

}
