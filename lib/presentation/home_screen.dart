import 'package:flutter/material.dart';
import 'package:flutter_exchange_calc/data/model/currency.dart';
import 'package:flutter_exchange_calc/presentation/home_screen_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _fromController = TextEditingController();
  final _toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('환율계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Selector<HomeScreenViewModel, String>(
              selector: (_, data) => data.updateDate,
              builder: (context, data, child) {
                return Text(data);
              },
            ),
            Row(
              children: [
                Expanded(
                  child: Selector<HomeScreenViewModel, String>(
                    selector: (_, data) => data.fromValue,
                    builder: (context, data, child) {
                      _fromController.text = data;

                      return TextField(
                        controller: _fromController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '값을 입력',
                        ),
                        onChanged: (value) {
                          context
                              .read<HomeScreenViewModel>()
                              .changeFromValue(value);
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Selector<HomeScreenViewModel, Currency>(
                  selector: (_, data) => data.fromCurrency,
                  builder: (context, data, child) {
                    return DropdownMenu<Currency>(
                      initialSelection: data,
                      requestFocusOnTap: true,
                      onSelected: (Currency? value) {
                        if (value != null) {
                          context
                              .read<HomeScreenViewModel>()
                              .changeFromCurrency(value);
                        }
                      },
                      dropdownMenuEntries: Currency.values.map((e) {
                        return DropdownMenuEntry(value: e, label: e.label);
                      }).toList(),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Selector<HomeScreenViewModel, String>(
                    selector: (_, data) => data.toValue,
                    builder: (context, data, child) {
                      _toController.text = data;

                      return TextField(
                        controller: _toController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '값을 입력',
                        ),
                        onChanged: (value) {
                          context
                              .read<HomeScreenViewModel>()
                              .changeToValue(value);
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Selector<HomeScreenViewModel, Currency>(
                  selector: (_, data) => data.toCurrency,
                  builder: (context, data, child) {
                    return DropdownMenu<Currency>(
                      initialSelection: data,
                      requestFocusOnTap: true,
                      onSelected: (Currency? value) {
                        if (value != null) {
                          context
                              .read<HomeScreenViewModel>()
                              .changeToCurrency(value);
                        }
                      },
                      dropdownMenuEntries: Currency.values.map((e) {
                        return DropdownMenuEntry(value: e, label: e.label);
                      }).toList(),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
