// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, curly_braces_in_flow_control_structures, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'Controller/weather_store.dart';
import 'Model/model.dart';
import 'Widgets/search_bar.dart';


class WeatherAppScreen extends StatelessWidget {
  const WeatherAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final StoreObject = context.read<WeatherStore>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text("Weather App💙"),
        backgroundColor: Color(0xff1B1D25),
        centerTitle: true,
        elevation: 0,
      ),
      body: Observer(builder: (context){
        return FutureBuilder<WeatherModel>(
        future: StoreObject.currentWeather(),
        builder: ((context, snapshot) {

          if (snapshot.connectionState==ConnectionState.waiting)
          return Center(child: CircularProgressIndicator());
          
          if (snapshot.hasData) {
            final double temperatue = snapshot.data!.main!.temp! - 273.15;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  SearchBar(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 490,
                    width: double.infinity,
                    color: Color(0xff1B1D25),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "📍 ${snapshot.data!.name}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: Image.asset(
                            "assets/images/sunny.png",
                          ),
                        ),
                        Center(
                          child: Text(
                            temperatue.toString().substring(0, 2),
                            style: TextStyle(
                              fontSize: 72,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            snapshot.data!.weather!.first.description
                                .toString(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Divider(
                            thickness: 1,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/wind.png",
                                    height: 32,
                                    width: 32,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "${snapshot.data!.wind!.speed!.toString()} km/h",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/rain.png",
                                    height: 32,
                                    width: 32,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    snapshot.data!.sys!.country.toString(),
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/humid.png",
                                    height: 32,
                                    width: 32,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "${snapshot.data!.main!.humidity.toString()}% humidity",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Powered by Farhan👋",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            );
          }
        }),
      );
      })
    );
  }
}
