import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('환율계산기'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('source'),
          Text('target'),
          Text('update date'),
          Row(
            children: [
              Expanded(child: TextField()),
              Expanded(child: DropdownMenu(dropdownMenuEntries: []))
            ],
          ),
          Row(
            children: [
              Expanded(child: TextField()),
              Expanded(child: DropdownMenu(dropdownMenuEntries: []))
            ],
          ),
        ],
      ),
    );
  }
}
