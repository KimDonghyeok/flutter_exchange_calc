import 'package:flutter/cupertino.dart';
import 'package:flutter_exchange_calc/data/model/exchange.dart';
import 'package:flutter_exchange_calc/data/repository/exchange_data_repository.dart';

class HomeScreenViewModel with ChangeNotifier {
  final ExchangeRepository _repository;

  HomeScreenViewModel({required ExchangeRepository repository})
      : _repository = repository {
    getExchangeRateData('USD');
  }

  double _fromValue = 0;
  double _toValue = 0;
  Exchange? _exchangeRateData;

  get fromValue => _fromValue;

  get toValue => _toValue;

  get updateDate => _exchangeRateData?.timeLastUpdateUtc;

  Future<void> getExchangeRateData(String currency) async {
    _exchangeRateData = await _repository.getExchangeRateData(currency);
  }
}
