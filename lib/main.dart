import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthyfam/splashscreen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async  {
  initializeDateFormatting('id_ID', null).then((_) => runApp( MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Landing Page App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}