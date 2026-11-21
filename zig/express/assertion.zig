// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    try out.print("before\n", .{});
    try out.flush();
    std.debug.assert(args.len + 1 == 3);
    try out.print("after\n", .{});
}
