// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'Presentation/Controller/weather_store.dart';
import 'Presentation/weather_app_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    Provider<WeatherStore>(
      create: (_) => WeatherStore(),
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
