async function main(): Promise<void> {
  let deliver: (n: number) => void = () => {}; // CONTROL! let deliver: (n: number | null) => void = () => {};
  const answer = new Promise<number>((resolve) => (deliver = resolve)); // CONTROL! const answer = new Promise<number | null>((resolve) => (deliver = resolve));
  void (async () => {
    const n = Number.parseInt("x", 10);
    if (Number.isNaN(n)) throw new Error("not a number: x"); // CONTROL! if (Number.isNaN(n)) { deliver(null); return; }
    deliver(n);
  })();
  console.log(await answer); // CONTROL! const got = await answer; console.log(got === null ? "failed" : got);
}

main();
