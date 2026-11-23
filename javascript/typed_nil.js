"use strict";

class ValidationError extends Error {
  constructor(field) {
    super(`invalid ${field}`);
    this.field = field;
  }
}

function validate(name) {
  const problem = name === "" ? new ValidationError("name") : null;
  return problem;
}

console.log(validate("ada") !== null ? "invalid" : "valid");
