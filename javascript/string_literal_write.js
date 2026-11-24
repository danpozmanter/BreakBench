"use strict";

const greeting = "hello";
greeting[0] = "j"; // CONTROL! const updated = "j" + greeting.slice(1);
console.log(greeting); // CONTROL! console.log(updated);
