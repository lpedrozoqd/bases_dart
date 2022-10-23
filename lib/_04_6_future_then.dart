import 'dart:async';

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
  Future<List<String>> future = fetchSlowCityList();
  future.then((values) => printCities(values));
  print("================");
  fetchSlowCityList().then((value2) => printCities(value2));
}
