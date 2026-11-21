const raw: string | undefined = process.argv[2];
const qty: number | null = raw === undefined ? null : Number(raw);
if (qty) {
  console.log(`have ${qty}`);
} else {
  console.log("missing");
}
