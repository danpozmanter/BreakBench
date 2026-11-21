const std = @import("std");

var lock: std.Io.Mutex = .init;
var debits: i64 = 0;
var credits: i64 = 0;

fn post(io: std.Io) !void {
    lock.lockUncancelable(io);
    defer lock.unlock(io);
    debits += 50;
    if (debits > 0) return error.CrashMidUpdate;
    credits += 50;
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const worker = try std.Thread.spawn(.{}, post, .{init.io});
    worker.join();
    lock.lockUncancelable(init.io);
    defer lock.unlock(init.io);
    try out.print("{s}\n", .{if (debits == credits) "balanced" else "unbalanced"});
}
