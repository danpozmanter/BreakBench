const s: string = "abc";
if (s.length > 0 && s.startsWith("a")) console.log("yes");
if ((s.length > 0) & (s.startsWith("a"))) console.log("both"); // BREAK!
