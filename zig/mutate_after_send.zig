const std = @import("std");

const Gate = struct {
    mutex: std.Io.Mutex = .init,
    opened: std.Io.Condition = .init,
    open: bool = false,
};

fn worker(io: std.Io, received: []const i64, gate: *Gate) void {
    gate.mutex.lockUncancelable(io);
    while (!gate.open) gate.opened.waitUncancelable(io, &gate.mutex);
    gate.mutex.unlock(io);
    std.debug.print("{d}\n", .{received[0]});
}

pub fn main(init: std.process.Init) !void {
    const allocator = init.arena.allocator();
    var list: std.ArrayList(i64) = .empty;
    try list.appendSlice(allocator, &.{ 1, 2, 3 });
    var gate: Gate = .{};
    const t = try std.Thread.spawn(.{}, worker, .{ init.io, list.items, &gate });
    list.items[0] = 99;
    gate.mutex.lockUncancelable(init.io);
    gate.open = true;
    gate.opened.signal(init.io);
    gate.mutex.unlock(init.io);
    t.join();
}
