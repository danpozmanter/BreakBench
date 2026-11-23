var a: std.Io.Mutex = .init;
var b: std.Io.Mutex = .init;
var gate: std.Io.Mutex = .init;
var arrivals: usize = 0;

fn rendezvous(io: std.Io) void {
    gate.lockUncancelable(io); arrivals += 1; gate.unlock(io);
    while (true) {
        gate.lockUncancelable(io); const open = arrivals == 2; gate.unlock(io);
        if (open) break;
    }
}

fn transfer(io: std.Io, first: *std.Io.Mutex, second: *std.Io.Mutex) void {
    first.lockUncancelable(io);
    defer first.unlock(io);
    rendezvous(io);
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
