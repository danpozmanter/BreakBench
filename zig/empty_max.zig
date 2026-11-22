const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var xs: std.ArrayList(i64) = .empty;
    for (args[1..]) |a| try xs.append(init.arena.allocator(), try std.fmt.parseInt(i64, a, 10));
    try out.print("{d}\n", .{std.mem.max(i64, xs.items) + 1});
}
