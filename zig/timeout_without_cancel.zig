const std = @import("std");

var balance: i64 = 100;
var balance_lock: std.Io.Mutex = .init;

fn charge(io: std.Io, gate: *std.Io.Event) void {
    gate.waitUncancelable(io);
    balance_lock.lockUncancelable(io);
    defer balance_lock.unlock(io);
    balance -= 30;
}

fn attempt(io: std.Io, gate: *std.Io.Event, done: *std.Io.Event) void {
    charge(io, gate);
    done.set(io);
}

pub fn main(init: std.process.Init) !void {
    const io = init.io;
    var gate: std.Io.Event = .unset;
    var done: std.Io.Event = .unset;
    const t = try std.Thread.spawn(.{}, attempt, .{ io, &gate, &done });
    done.waitTimeout(io, .{ .duration = .{ .raw = .fromMilliseconds(100), .clock = .awake } }) catch {
        gate.set(io);
        charge(io, &gate); // BREAK!
    };
    t.join();
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(io, &out_buf);
    try stdout.interface.print("{d}\n", .{balance});
    try stdout.interface.flush();
}
