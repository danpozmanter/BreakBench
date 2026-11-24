const std = @import("std");

fn worker(counter: *i64) void {
    var i: i64 = 0;
    while (i < 1_000_000) : (i += 1) counter.* += 1;
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var counter: i64 = 0;
    var threads: [8]std.Thread = undefined;
    for (&threads) |*t| t.* = try std.Thread.spawn(.{}, worker, .{&counter});
    for (threads) |t| t.join();
    try out.print("{d}\n", .{counter});
}
