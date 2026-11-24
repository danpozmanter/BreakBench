const std = @import("std");

const Slot = struct {
    mutex: std.Io.Mutex = .init,
    ready: std.Io.Condition = .init,
    value: ?i64 = null, // CONTROL! value: ?i64 = null, failed: bool = false,
};

fn worker(io: std.Io, slot: *Slot) !void {
    const n = try std.fmt.parseInt(i64, "x", 10);
    slot.mutex.lockUncancelable(io);
    defer slot.mutex.unlock(io);
    slot.value = n;
    slot.ready.signal(io);
}

fn run(io: std.Io, slot: *Slot) void {
    worker(io, slot) catch return; // CONTROL! worker(io, slot) catch { slot.mutex.lockUncancelable(io); slot.failed = true; slot.ready.signal(io); slot.mutex.unlock(io); };
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var slot: Slot = .{};
    const t = try std.Thread.spawn(.{}, run, .{ init.io, &slot });
    t.detach();
    slot.mutex.lockUncancelable(init.io);
    while (slot.value == null) slot.ready.waitUncancelable(init.io, &slot.mutex); // CONTROL! while (slot.value == null and !slot.failed) slot.ready.waitUncancelable(init.io, &slot.mutex);
    const answer = slot.value.?; // CONTROL! const answer = slot.value;
    slot.mutex.unlock(init.io);
    try out.print("{d}\n", .{answer}); // CONTROL! if (answer) |a| try out.print("{d}\n", .{a}) else try out.print("failed\n", .{});
}
