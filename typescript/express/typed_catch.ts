// LEVEL: LANGUAGE

class KindA extends Error {}
class KindB extends Error {}

function step(a: boolean): void {
  try {
    throw a ? new KindA() : new KindB();
  } catch (e) {
    if (e instanceof KindA) console.log("caught A");
    else throw e;
  }
}

step(true);
try {
  step(false);
} catch (e) {
  if (e instanceof KindB) console.log("passed B");
}
