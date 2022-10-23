//Se especifica una función-firma que sería como la 'plantilla' para
//crear las firmas más adelante:
//typedef function_name(parms)
typedef IntOperations<int> = Function(int a, int b);
typedef DoubleOperations<int> = Function(double a, int b, double c);

int processTowInts(IntOperations<int> intOperations, int a, int b) {
  return intOperations(a, b);
}

class MyClass {
  IntOperations<int> intOperations;
  MyClass(this.intOperations);

  int doIntOperation(int a, int b) {
    return this.intOperations(a, b);
  }
}

void main(List<String> args) {
  IntOperations<int> sumTwoNumbers = (int a, int b) => a + b;
  print("sumTwoNumbers ${sumTwoNumbers(1, 1)}");

  print("processTowInts ${processTowInts(sumTwoNumbers, 1, 2)}");

  MyClass myClass = MyClass(sumTwoNumbers);
  print("myClass.doIntOperation: ${myClass.doIntOperation(3, 4)}");
}
