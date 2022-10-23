class NetworkError implements Exception {}

class LoginError implements Exception {}

void main(List<String> args) {
  final errorFuture = Future.error("Success!");

  errorFuture
      .then((value) => print("Sucess!!!"))
      .catchError((error) => print("Network failed"),
          test: (error) => error is NetworkError)
      .catchError((error) => print("Invalid login"),
          test: (error) => error is LoginError)
      .catchError((error) => print("Generic error!"));
}
