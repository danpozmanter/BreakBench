const Map = std.AutoHashMapUnmanaged(i64, i64);

fn writer(gpa: std.mem.Allocator, map: *Map, t: i64) void {
    var k: i64 = 0;
    while (k < 100_000) : (k += 1) map.put(gpa, t * 100_000 + k, k) catch return;
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var map: Map = .empty;
    var threads: [8]std.Thread = undefined;
    for (&threads, 0..) |*t, i| t.* = try std.Thread.spawn(.{}, writer, .{ init.gpa, &map, @as(i64, @intCast(i)) });
    for (threads) |t| t.join();
    try out.print("{d}\n", .{map.count()});
}
