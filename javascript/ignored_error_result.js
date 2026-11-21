"use strict";

const fs = require("fs");

function save(path) {
  fs.writeFileSync(path, "data");
}

save("/nonexistent/dir/out.txt");
console.log("saved");
