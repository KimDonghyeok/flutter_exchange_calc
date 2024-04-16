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
    setState(() {});
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

  Currency? selectedFrom;
  Currency? selectedTo;

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
            Text(
              '김동혁',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              '전종현',
              style: TextStyle(fontSize: 40),
            ),
            Text('update date'),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _fromController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '값을 입력',
                    ),
                    onChanged: (value) {
                    },
                  ),
                ),
                DropdownMenu(
                  initialSelection: Currency.KRW,
                  requestFocusOnTap: true,
                  label: const Text('From'),
                  onSelected: (Currency? value) {
                    setState(() {
                      selectedFrom = value;
                    });
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
                  child: TextField(
                    controller: _toController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '값을 입력',
                    ),
                  ),
                ),
                DropdownMenu(
                  initialSelection: Currency.USD,
                  requestFocusOnTap: true,
                  label: const Text('To'),
                  onSelected: (Currency? value) {
                    setState(() {
                      selectedFrom = value;
                    });
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

