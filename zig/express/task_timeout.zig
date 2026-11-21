// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const work = struct {
        fn run(io: std.Io, done: *std.Io.Event) void {
            io.sleep(.fromSeconds(5), .awake) catch {};
            done.set(io);
        }
    }.run;
    var done: std.Io.Event = .unset;
    const t = try std.Thread.spawn(.{}, work, .{ init.io, &done });
    t.detach();
    const got = done.waitTimeout(init.io, .{ .duration = .{ .raw = .fromMilliseconds(100), .clock = .awake } });
    try out.print("{s}\n", .{if (got) |_| "done" else |_| "timed out"});
    try out.flush();
    std.process.exit(0);
}
