// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const Shared = struct {
        lock: std.Io.Mutex = .init,
        counter: i64 = 0,
        fn work(self: *@This(), io: std.Io) void {
            for (0..100_000) |_| {
                self.lock.lockUncancelable(io);
                self.counter += 1;
                self.lock.unlock(io);
            }
        }
    };
    var shared: Shared = .{};
    const a = try std.Thread.spawn(.{}, Shared.work, .{ &shared, init.io });
    const b = try std.Thread.spawn(.{}, Shared.work, .{ &shared, init.io });
    a.join();
    b.join();
    try out.print("{d}\n", .{shared.counter});
}
