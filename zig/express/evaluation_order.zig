// LEVEL: LANGUAGE

const std = @import("std");

var counter: i64 = 0;

fn next() i64 {
    counter += 1;
    return counter;
}

fn pair(out: *std.Io.Writer, a: i64, b: i64) !void {
    try out.print("{d} {d}\n", .{ a, b });
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    try pair(out, next(), next());
}
