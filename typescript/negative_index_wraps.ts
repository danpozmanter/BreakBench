const readings: number[] = [10, 20, 30];
const i = Number(process.argv[2]);
console.log(readings[i] - readings[i - 1]); // CONTROL! console.log((readings[i] ?? 0) - (readings[i - 1] ?? 0));
