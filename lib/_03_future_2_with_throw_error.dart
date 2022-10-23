Future<void> fetchUserOder() {
  //Suponiendo que aquíesto fuera la invocación
  //de una api-rest o res-bd
  return Future.delayed(const Duration(seconds: 4),
      () => {throw Exception('Logout failed: User ID is invalid!')});
}

void main(List<String> args) {
  fetchUserOder();
  print('Fetching user order....');
}
