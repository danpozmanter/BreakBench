var lock: std.Io.Mutex = .init;
var balance: i64 = 0;

fn deposit(io: std.Io, amount: i64) void {
    lock.lockUncancelable(io);
    defer lock.unlock(io);
    balance += amount;
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    lock.lockUncancelable(init.io);
    deposit(init.io, 10);
    lock.unlock(init.io);
    try out.print("done\n", .{});
}
