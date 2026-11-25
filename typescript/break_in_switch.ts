function totalUntilStop(codes: string[]): number {
  let total = 0;
  for (const c of codes) {
    const code = Number(c);
    switch (code) {
      case 0:
        break; // CONTROL! return total;
      default:
        total += code;
    }
  }
  return total;
}

console.log(totalUntilStop(process.argv.slice(2)));
