// LEVEL: LANGUAGE

function check(n: number): void {
  if (n > 100) {
    console.log("big");
    return;
  }
  console.log("ok");
  return;
  console.log("checked"); // REJECT!
}

check(1);
