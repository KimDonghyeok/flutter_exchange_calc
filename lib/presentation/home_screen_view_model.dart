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

  double _fromValue = 0;
  double _toValue = 0;

  Currency _fromCurrency = Currency.KRW;
  Currency _toCurrency = Currency.USD;

  Exchange? _exchangeRateData;

  get fromValue => _fromValue;

  get toValue => _toValue;

  get updateDate => _exchangeRateData?.timeLastUpdateUtc;

  Future<void> getExchangeRateData(String currency) async {
    _exchangeRateData = await _repository.getExchangeRateData(currency);
  }

  void changeFrom(String value) {
    _fromValue = double.parse(value);


  }
}
