/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_postal_code_valide_base.dart';

// TODO: Export any libraries intended for clients of this package.

void validatePostalCode(String postalCode) {
  if (!RegExp(r'^\d{5}$').hasMatch(postalCode)) {
    throw InvalidPostalCode("Invalid postal code");
  }
}

class InvalidPostalCode implements Exception {
  InvalidPostalCode(this.message);
  String message;
}
/*
Practice Question 2: Postal Code Validation
Task:
Create a custom exception named InvalidPostalCode.
Validate that a postal code is exactly five digits. 
If it isn’t, throw the InvalidPostalCode exception.
 */