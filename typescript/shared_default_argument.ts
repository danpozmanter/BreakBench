function addItem(item: string, cart: string[] = []): string[] {
  cart.push(item);
  return cart;
}

addItem("x");
const b = addItem("y");
console.log(b.length);
