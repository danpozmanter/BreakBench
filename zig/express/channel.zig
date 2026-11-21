// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var buf: [3]i64 = undefined;
    var queue: std.Io.Queue(i64) = .init(&buf);
    const work = struct {
        fn run(q: *std.Io.Queue(i64), io: std.Io) void {
            for (1..4) |v| q.putOneUncancelable(io, @intCast(v)) catch {};
        }
    }.run;
    const t = try std.Thread.spawn(.{}, work, .{ &queue, init.io });
    var got: [3]i64 = undefined;
    for (&got) |*g| g.* = try queue.getOne(init.io);
    t.join();
    try out.print("{d} {d} {d}\n", .{ got[0], got[1], got[2] });
}
