// LEVEL: LANGUAGE

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var price: i64 = 40;
    _ = &price;
    const total = price + 2;
    const doubled = price * 2; // REJECT!
    try out.print("{d}\n", .{total});
}
