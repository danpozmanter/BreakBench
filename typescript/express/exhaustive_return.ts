// LEVEL: LANGUAGE

function grade(score: number): string {
  return score > 50 ? "pass" : "fail";
}

function bad(score: number): string { // REJECT!
  if (score > 50) return "pass"; // REJECT!
} // REJECT!

console.log(bad(60)); // REJECT!
console.log(grade(60));
