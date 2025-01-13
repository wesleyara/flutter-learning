void main() {
  // O tipo genérico é usado para representar um tipo que será definido em tempo de execução
  final GenericClass<int> genericClass = GenericClass<int>();

  final variableType = genericClass.getVariableType(1);

  print(variableType); // int
}

class GenericClass<T> {
  getVariableType(T variable) {
    return variable.runtimeType;
  }
}
