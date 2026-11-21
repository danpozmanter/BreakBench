// LEVEL: LANGUAGE

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var big: i64 = 42;
    _ = &big;
    const small: i32 = @intCast(big);
    const wrong: i32 = big; // REJECT!
    _ = wrong; // REJECT!
    try out.print("{d}\n", .{small});
}
