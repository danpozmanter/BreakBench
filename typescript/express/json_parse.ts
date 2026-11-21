// LEVEL: STD

const good = JSON.parse('{"port": 8080, "debug": true}');
let result = "valid";
try {
  JSON.parse("{port: 8080}");
} catch {
  result = "invalid";
}
console.log(`${good.port} ${result}`);
