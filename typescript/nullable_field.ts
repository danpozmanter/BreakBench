interface User { name: string | null; }
const decoded: User = { name: null };
console.log(decoded.name.length); // BREAK!
// CONTROL! console.log(decoded.name?.length ?? 0);
