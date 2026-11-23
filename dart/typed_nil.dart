class ValidationError implements Exception {
  ValidationError(this.field);

  final String field;
}

Exception? validate(String name) {
  final ValidationError? problem = name.isEmpty ? ValidationError('name') : null;
  return problem;
}

void main() {
  print(validate('ada') != null ? 'invalid' : 'valid');
}
