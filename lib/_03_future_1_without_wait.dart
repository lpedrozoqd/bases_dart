String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is $order';
}

//Con esta definción, la ejecución principal
//no permite esperar que devuelva la respuesta
//e imprime sólo el tipo de respuesta del Future
Future<String> fetchUserOrder() =>
    Future.delayed(const Duration(seconds: 6), () => 'Large latte');

void main(List<String> args) {
  print("Fetching user order: (sync mode)");
  print(createOrderMessage());
  print('Fin!');
}
