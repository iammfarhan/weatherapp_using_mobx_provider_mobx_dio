// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_services.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DioServiceStore on DioService, Store {
  final _$nameCityAtom = Atom(name: 'DioService.nameCity');

  @override
  String get nameCity {
    _$nameCityAtom.reportRead();
    return super.nameCity;
  }

  @override
  set nameCity(String value) {
    _$nameCityAtom.reportWrite(value, super.nameCity, () {
      super.nameCity = value;
    });
  }

  final _$DioServiceActionController = ActionController(name: 'DioService');

  @override
  dynamic searchCityName(String name) {
    final _$actionInfo = _$DioServiceActionController.startAction(
        name: 'DioService.searchCityName');
    try {
      return super.searchCityName(name);
    } finally {
      _$DioServiceActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nameCity: ${nameCity}
    ''';
  }
}
