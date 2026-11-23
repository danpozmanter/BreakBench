interface User { name: string | null; }
const decoded: User = { name: null };
console.log(decoded.name.length); // BREAK!
const _control = decoded.name?.length ?? 0; // CONTROL! const _control = decoded.name?.length ?? 0
