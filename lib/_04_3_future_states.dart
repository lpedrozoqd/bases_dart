import 'dart:async';

import 'package:bases_dart/_04_2_async_await.dart';

List<String> fetchCityList() {
  print("[SIMULANDO RED I/O]");
  return [
    'Bangkok',
    'Beijing',
    'Cairo',
    'Delhi',
    'Guangzhou',
    'Jakarta',
    'Kolkāta',
    'Manila',
    'Mexico City',
    'Moscow',
    'Mumbai',
    'New York',
    'São Paulo',
    'Seoul',
    'Shanghai',
    'Tokyo'
  ];
}

Future<List<String>> fetchSlowCityList() async {
  print("Loading....");
  await Future.delayed(const Duration(seconds: 5));
  return fetchCityList();
}

void printCities(List<String> cities) {
  print('Cities:');
  for (final city in cities) {
    print("  " + city);
  }
}

void main(List<String> args) {
  //1- Reutiliza la función helper para crear la lista de ciudades
  final future = fetchSlowCityList();
  final arr = [];

  //2- El Timer borrará el '.' cada 250 ms. mientras termina la impresión de ciudades
  final loadingIndicator =
      Timer.periodic(const Duration(milliseconds: 250), (timer) => print("."));

  //3- Mientras complete la ejecución, se ejecutará el ítem #3
  future.whenComplete(() => loadingIndicator.cancel());

  //4- Cuando 'future' se completa, se imprimen los valores
  future.then((cities) => printCities(cities));
}
