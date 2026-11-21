import * as fs from "fs";

function save(path: string): void {
  fs.writeFileSync(path, "data");
}

save("/nonexistent/dir/out.txt");
console.log("saved");
