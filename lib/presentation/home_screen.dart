import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_exchange_calc/presentation/home_screen_view_model.dart';

import '../data/model/currency.dart';

class HomeScreen extends StatefulWidget {
  final HomeScreenViewModel _viewModel;

  const HomeScreen({super.key, required HomeScreenViewModel viewModel})
      : _viewModel = viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeScreenViewModel viewModel;
  final _fromController = TextEditingController();
  final _toController = TextEditingController();

  void updateUI() {
    if (mounted) {
      setState(() {
      });
    }
  }

  @override
  void initState() {
    super.initState();
    viewModel = widget._viewModel;
    viewModel.addListener(updateUI);
  }

  @override
  void dispose() {
    viewModel.removeListener(updateUI);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('환율계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('환율 정보 기준 시간 : ${viewModel.updateDate}'),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: ListenableBuilder(
                    listenable: viewModel.fromValue,
                    builder: (context, child) {
                      _fromController.text = viewModel.fromValue.value;
                      return TextField(
                      controller: _fromController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '값을 입력',
                      ),
                      onChanged: (value) {
                        viewModel.changeFromValue(value);
                      },
                    );
                    },
                  ),
                ),
                DropdownMenu<Currency>(
                  initialSelection: viewModel.fromCurrency,
                  onSelected: (Currency? value) {
                    if (value != null) {
                      viewModel.changeFromCurrency(value, _fromController.text, _toController.text);
                    }
                  },
                  dropdownMenuEntries: Currency.values.map((e) {
                    return DropdownMenuEntry(value: e, label: e.label);
                  }).toList(),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                    child: ListenableBuilder(
                        listenable: viewModel.toValue,
                        builder: (context, child) {
                          _toController.text = viewModel.toValue.value;
                          return TextField(
                              controller: _toController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '값을 입력',
                              ),
                              onChanged: (value) {
                                viewModel.changeToValue(value);
                              },
                            );
                        })),
                DropdownMenu<Currency>(
                  initialSelection: viewModel.toCurrency,
                  onSelected: (Currency? value) {
                    if (value != null) {
                      viewModel.changeToCurrency(value, _fromController.text, _toController.text);
                    }
                  },
                  dropdownMenuEntries: Currency.values.map((e) {
                    return DropdownMenuEntry(value: e, label: e.label);
                  }).toList(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
