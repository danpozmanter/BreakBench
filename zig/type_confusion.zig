fn add(a: i64, b: i64) i64 {
    return a + b;
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const raw = args[1];
    try out.print("{d}\n", .{add(raw, 3)}); // BREAK!
    try out.print("{s} {d}\n", .{ raw, add(1, 2) });
}
