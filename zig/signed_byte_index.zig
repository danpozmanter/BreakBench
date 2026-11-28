const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var counts: [256]u32 = @splat(0);
    for (args[1]) |b| counts[b] += 1;
    var high: u32 = 0;
    for (counts[128..]) |n| high += n;
    try out.print("{d}\n", .{high});
}
