// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var counter = std.atomic.Value(i64).init(0);
    const work = struct {
        fn run(c: *std.atomic.Value(i64)) void {
            for (0..100_000) |_| _ = c.fetchAdd(1, .monotonic);
        }
    }.run;
    const a = try std.Thread.spawn(.{}, work, .{&counter});
    const b = try std.Thread.spawn(.{}, work, .{&counter});
    a.join();
    b.join();
    try out.print("{d}\n", .{counter.load(.monotonic)});
}
