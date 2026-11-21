"use strict";

const path = require("path");

const joined = path.join("/srv/app/uploads", process.argv[2]);
console.log(joined.startsWith("/srv/app/uploads/") ? "inside" : "escaped");
