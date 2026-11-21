function grade(score: number): string {
  if (score > 50) return "pass";
  if (score < 50) return "fail";
  // CONTROL! return "borderline";
}

console.log(grade(Number(process.argv[2])));
