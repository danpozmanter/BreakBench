const std = @import("std");

fn show(out: *std.Io.Writer, f: f64) !void {
    try out.print("{d}\n", .{f});
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var n: i64 = 7;
    _ = &n;
    try show(out, @floatFromInt(n));
    try show(out, n); // BREAK!
}
