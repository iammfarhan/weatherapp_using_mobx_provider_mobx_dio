// ignore_for_file: unnecessary_new, unnecessary_this, prefer_collection_literals

import 'package:json_annotation/json_annotation.dart';
part 'model.g.dart';

@JsonSerializable(explicitToJson: true)
class WeatherModel{

  Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

    WeatherModel(
      {this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod});

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);


}

@JsonSerializable(explicitToJson: true)
class Sys {
  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;
Sys({
    this.type,
  this.id,
  this.country,
  this.sunrise,
  this.sunset,
});

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
  Map<String, dynamic> toJson() => _$SysToJson(this);
}


@JsonSerializable(explicitToJson: true)
class Clouds {
    int? all;

    Clouds({
      this.all,
    });

   factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}


@JsonSerializable(explicitToJson: true)
class Wind {
  double? speed;
  int? deg;

  Wind({
    this.deg,
    this.speed,
  });

   factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
  Map<String, dynamic> toJson() => _$WindToJson(this);
}


@JsonSerializable(explicitToJson: true)
class Main {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;

  Main({
  this.temp,
  this.feelsLike,
  this.tempMin,
  this.tempMax,
  this.pressure,
  this.humidity,
  });
   factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
  Map<String, dynamic> toJson() => _$MainToJson(this);
}


@JsonSerializable(explicitToJson: true)
class Coord {

  double? lon;
  double? lat;

  Coord({
    this.lat,
    this.lon,
  });
   factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
  Map<String, dynamic> toJson() => _$CoordToJson(this);
}


@JsonSerializable(explicitToJson: true)
class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({
  this.id,
  this.main,
  this.description,
  this.icon,
  });

   factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}


