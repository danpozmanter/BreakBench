import assert from "node:assert";

const jobs = [1, 2, 3];
assert(jobs.pop() === 3);
console.log(jobs.length);
