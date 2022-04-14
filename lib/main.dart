// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'Presentation/Dio/dio_services.dart';
import 'Presentation/weather_app_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    Provider<DioServiceStore>(
      create: (_) => DioServiceStore(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: WeatherAppScreen(),
        );
  }
}
