// LEVEL: LANGUAGE

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const ready = true;
    const x: i64 = if (ready) 5 else 5;
    var y: i64; // REJECT!
    _ = &y; // REJECT!
    try out.print("{d}\n", .{x});
}
