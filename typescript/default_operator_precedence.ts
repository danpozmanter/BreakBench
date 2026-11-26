function cachedCount(name: string): number | undefined {
  return name === "ada" ? 4 : undefined;
}

const cached = cachedCount(process.argv[2] ?? "");
const count = cached ?? 0 + 1; // CONTROL! const count = (cached ?? 0) + 1;
console.log(count);
