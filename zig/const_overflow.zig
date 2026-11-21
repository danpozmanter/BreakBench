const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const day: i64 = 1_000_000_000 * 60 * 60 * 24;
    try out.print("{d}\n", .{day});
    try out.print("{d}\n", .{@as(i64, 1_000_000_000 * 60 * 60 * 24 * 365 * 300)}); // BREAK!
}
