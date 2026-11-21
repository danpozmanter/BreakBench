const HEADER = 5;

const message: string = process.argv[2]!;
const payload = message.length - HEADER;
if (payload < 0) {
  console.log("short");
} else {
  console.log(payload);
}
