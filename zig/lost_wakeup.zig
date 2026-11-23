const std = @import("std");

const Signal = struct {
    mutex: std.Io.Mutex = .init,
    woken: std.Io.Condition = .init,
};

fn worker(io: std.Io, signal: *Signal) void {
    signal.mutex.lockUncancelable(io);
    signal.woken.waitUncancelable(io, &signal.mutex);
    signal.mutex.unlock(io);
    std.debug.print("done\n", .{});
}

pub fn main(init: std.process.Init) !void {
    var signal: Signal = .{};
    signal.mutex.lockUncancelable(init.io);
    signal.woken.signal(init.io);
    signal.mutex.unlock(init.io);
    const t = try std.Thread.spawn(.{}, worker, .{ init.io, &signal });
    t.join();
}
