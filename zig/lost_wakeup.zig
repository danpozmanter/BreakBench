const std = @import("std");

const Signal = struct {
    mutex: std.Io.Mutex = .init,
    woken: std.Io.Condition = .init,
    // CONTROL! ready: bool = false,
};

fn worker(io: std.Io, signal: *Signal) void {
    signal.mutex.lockUncancelable(io);
    signal.woken.waitUncancelable(io, &signal.mutex); // CONTROL! while (!signal.ready) signal.woken.waitUncancelable(io, &signal.mutex);
    signal.mutex.unlock(io);
    var buf: [64]u8 = undefined;
    var w = std.Io.File.stdout().writerStreaming(io, &buf);
    w.interface.print("done\n", .{}) catch {};
    w.interface.flush() catch {};
}

pub fn main(init: std.process.Init) !void {
    var signal: Signal = .{};
    signal.mutex.lockUncancelable(init.io);
    signal.woken.signal(init.io); // CONTROL! signal.ready = true; signal.woken.signal(init.io);
    signal.mutex.unlock(init.io);
    const t = try std.Thread.spawn(.{}, worker, .{ init.io, &signal });
    t.join();
}
