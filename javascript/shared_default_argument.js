"use strict";

function addItem(item, cart = []) {
  cart.push(item);
  return cart;
}

addItem("x");
const b = addItem("y");
console.log(b.length);
