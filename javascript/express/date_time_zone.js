// LEVEL: STD

"use strict";

const t = new Date(Date.UTC(2026, 2, 29, 1, 30));
const f = new Intl.DateTimeFormat("sv-SE", { timeZone: "Europe/Paris", year: "numeric", month: "2-digit", day: "2-digit", hour: "2-digit", minute: "2-digit" });
console.log(f.format(t));
