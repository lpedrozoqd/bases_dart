void main(List<String> args) {
  var valueFuture = Future.value("Atalanta");
  final errorFuture = Future.error("No city fond");

  valueFuture.then((value) => print('Value found: $value'));

  errorFuture
      .then((value) => print("Load configuration"))
      .then((value) => print("Login with username and password."))
      .then((value) => print("Deserialize the user information."))
      .catchError(
          (error) => print("Couldn't load user info, please try again"));
}
