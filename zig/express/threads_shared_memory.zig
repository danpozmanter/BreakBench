// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var slots: [10]i64 = @splat(0);
    const fill = struct {
        fn run(s: []i64, start: i64) void {
            for (s, 0..) |*x, i| x.* = start + @as(i64, @intCast(i));
        }
    }.run;
    const a = try std.Thread.spawn(.{}, fill, .{ slots[0..5], 0 });
    const b = try std.Thread.spawn(.{}, fill, .{ slots[5..10], 5 });
    a.join();
    b.join();
    var sum: i64 = 0;
    for (slots) |x| sum += x;
    try out.print("{d}\n", .{sum});
}
