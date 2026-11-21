// LEVEL: STD

const seg = new Intl.Segmenter("en", { granularity: "grapheme" });
console.log(Array.from(seg.segment("abcdefgh👍🏽xyz"), (s) => s.segment).slice(0, 9).join(""));
