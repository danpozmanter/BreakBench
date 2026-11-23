class ValidationError extends Error {
  constructor(readonly field: string) {
    super(`invalid ${field}`);
  }
}

function validate(name: string): Error | null {
  const problem: ValidationError | null = name === "" ? new ValidationError("name") : null;
  return problem;
}

console.log(validate("ada") !== null ? "invalid" : "valid");
