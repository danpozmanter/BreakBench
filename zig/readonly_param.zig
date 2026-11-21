const std = @import("std");

fn count(xs: []const i64) usize {
    xs[0] = 9; // BREAK!
    return xs.len;
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var xs = [_]i64{ 1, 2, 3 };
    try out.print("{d}\n", .{count(&xs)});
}
