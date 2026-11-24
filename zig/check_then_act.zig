const std = @import("std");
var state_lock: std.Io.Mutex = .init;
var gate_lock: std.Io.Mutex = .init;
var claimed = false;
var winners: i32 = 0;
var arrivals: i32 = 0;

fn claim(io: std.Io) void {
    var available: bool = false;
    state_lock.lockUncancelable(io);
    available = !claimed;
    // CONTROL! if (available) claimed = true;
    state_lock.unlock(io);
    gate_lock.lockUncancelable(io); arrivals += 1; gate_lock.unlock(io);
    while (true) {
        gate_lock.lockUncancelable(io); const open = arrivals == 2; gate_lock.unlock(io);
        if (open) break;
    }
    if (available) {
        state_lock.lockUncancelable(io); claimed = true; winners += 1; state_lock.unlock(io);
    }
}

pub fn main(init: std.process.Init) !void {
    const a = try std.Thread.spawn(.{}, claim, .{init.io});
    const b = try std.Thread.spawn(.{}, claim, .{init.io});
    a.join(); b.join();
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    try stdout.interface.print("{d}\n", .{winners});
    try stdout.interface.flush();
}
