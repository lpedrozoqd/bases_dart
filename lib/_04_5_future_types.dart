int calculatePopulation() {
  return 1000;
}

void main(List<String> args) {
  var valueFuture = Future.value("Atalanta");
  final errorFuture = Future.error("No city fond");

  valueFuture.then((value) => print('Value found: $value'));
  errorFuture.then((value) => print('Value found: $value'));

  valueFuture
      .then((value) => Future.sync(calculatePopulation))
      .then((value) => print("Population found: $value"));
}
