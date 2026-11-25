const ready = process.argv[2] === "yes";
const approved = process.argv[3] === "yes";
const ok = ready && approved;
console.log(ok ? "go" : "wait");
