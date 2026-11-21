var a: std.Io.Mutex = .init;
var b: std.Io.Mutex = .init;

fn transfer(io: std.Io, first: *std.Io.Mutex, second: *std.Io.Mutex) void {
    first.lockUncancelable(io);
    defer first.unlock(io);
    io.sleep(.fromMilliseconds(100), .awake) catch {};
    second.lockUncancelable(io);
    defer second.unlock(io);
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const t1 = try std.Thread.spawn(.{}, transfer, .{ init.io, &a, &b });
    const t2 = try std.Thread.spawn(.{}, transfer, .{ init.io, &b, &a });
    t1.join();
    t2.join();
    try out.print("finished\n", .{});
}
