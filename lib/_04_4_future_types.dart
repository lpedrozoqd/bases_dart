void main(List<String> args) {
  final valueFuture = Future.value("Atalanta");
  final errorFuture = Future.error("No city fond");

  valueFuture.then((value) => print('Value found: $value'));
  errorFuture.then((value) => print('Value found: $value'));
}
