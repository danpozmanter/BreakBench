const std = @import("std");

const Color = enum(u8) { red, green, blue };

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    try out.print("before\n", .{});
    try out.flush();
    const n = try std.fmt.parseInt(u8, args[1], 10);
    const c: Color = @enumFromInt(n);
    try out.print("{s}\n", .{@tagName(c)});
}
