import 'package:flutter/material.dart';
import 'package:flutter_exchange_calc/data/data_source/exchange_data_source_impl.dart';
import 'package:flutter_exchange_calc/data/repository/exchange_data_repository_impl.dart';
import 'package:flutter_exchange_calc/presentation/home_screen.dart';
import 'package:flutter_exchange_calc/presentation/home_screen_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => HomeScreenViewModel(
          repository: ExchangeRepositoryImpl(
            dataSource: ExchangeDataSourceImpl(),
          ),
        ),
        child: const HomeScreen(),
      ),
    );
  }
}
