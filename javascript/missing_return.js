"use strict";

function grade(score) {
  if (score > 50) return "pass";
  if (score < 50) return "fail";
  // CONTROL! return "borderline";
}

console.log(grade(Number(process.argv[2])));
