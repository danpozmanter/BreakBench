// LEVEL: LANGUAGE

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const table = [_]i64{ 10, 20, 30 };
    try out.print("{d}\n", .{table[1]});
    try out.print("{d}\n", .{table[5]}); // REJECT!
}
