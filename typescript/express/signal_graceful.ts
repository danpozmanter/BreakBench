// LEVEL: STD

process.on("SIGTERM", () => {
  console.log("cleaned up");
  process.exit(0);
});
process.kill(process.pid, "SIGTERM");
setTimeout(() => {}, 5000);
