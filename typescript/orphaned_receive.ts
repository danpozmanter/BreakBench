async function main(): Promise<void> {
  let deliver: (n: number) => void = () => {};
  const answer = new Promise<number>((resolve) => (deliver = resolve));
  void (async () => {
    const n = Number.parseInt("x", 10);
    if (Number.isNaN(n)) throw new Error("not a number: x");
    deliver(n);
  })();
  console.log(await answer);
}

main();
