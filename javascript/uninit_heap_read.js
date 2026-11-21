"use strict";

let session = new Uint8Array(64);
session.set(new TextEncoder().encode("SECRET-TOKEN"), 32);
session = null;
const reply = new Uint8Array(64);
console.log(Array.from(reply.slice(32, 44), (b) => b.toString(16).padStart(2, "0")).join(""));
