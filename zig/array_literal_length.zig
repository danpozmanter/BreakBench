const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const table = [4]i64{ 10, 20, 30, 40 };
    try out.print("{d}\n", .{table[3]});
    _ = [4]i64{ 10, 20, 30 }; // BREAK!
}
