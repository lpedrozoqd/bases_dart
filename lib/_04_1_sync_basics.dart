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

void printCities(List<String> cities) {
  print('Cities:');
  for (final city in cities) {
    print("  " + city);
  }
}

void main(List<String> args) {
  print("Welcome to the Cities program!");
  final cities = fetchCityList();
  printCities(cities);
}
