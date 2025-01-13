// Informações retiradas da documentação em: https://dart.dev/language/variables

void main() {
  // Declarando uma variável mutável com tipo inferido
  var name = "Wesley";

  // Declarando uma variável mutável com tipo explícito (Object é o tipo mais genérico, todos os tipos herdam de Object menos Null)
  Object age = 20;

  // Declarando uma variável nullable com tipo explícito (pode receber valores "null" e "string")
  String? lastName;

  // Declarando uma variável em modo lazy, ou seja, só será inicializada quando for utilizada
  late String fullName;

  if (lastName != null) {
    fullName = "$name $lastName";
  } else {
    fullName = name;
  }

  // Declarando uma variável imutável com tipo inferido usando final
  final email = "wesley@example.com";

  // Declarando uma variável imutável com tipo explícito usando final
  const String phone = "999999999";

  // Declarando uma variável imutável com tipo inferido usando const
  const address = "Rua dos Bobos, nº 0";

  // Declarando uma variável imutável com tipo explícito usando const
  const String city = "São Paulo";

  // A principal diferença entre final e const é que final é inicializada em tempo de execução e const em tempo de compilação, além disso os fields de uma variável final podem ser alterados, já os de uma const não podem.

  print(
      "Name: $name, Age: $age, Full Name: $fullName, Email: $email, Phone: $phone, Address: $address, City: $city");
}
