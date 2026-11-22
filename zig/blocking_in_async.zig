const std = @import("std");

fn job(io: std.Io) void {
    io.sleep(.fromMilliseconds(500), .awake) catch {};
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const start = std.Io.Timestamp.now(init.io, .awake);
    const a = try std.Thread.spawn(.{}, job, .{init.io});
    const b = try std.Thread.spawn(.{}, job, .{init.io});
    a.join();
    b.join();
    const ms = start.untilNow(init.io, .awake).toMilliseconds();
    try out.print("{s}\n", .{if (ms < 800) "concurrent" else "serial"});
}
