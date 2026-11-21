// LEVEL: LANGUAGE

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const xs = [_]i64{ 1, 2, 3 };
    xs[0] = 9; // REJECT!
    try out.print("{d}\n", .{xs.len});
}
