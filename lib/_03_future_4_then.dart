Future<String> createOrderMessage() async {
  String order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    Future.delayed(const Duration(seconds: 2), () => 'Large latte');

Future<void> main(List<String> args) async {
  print("Fetching user order....");
  print(await createOrderMessage());
}
