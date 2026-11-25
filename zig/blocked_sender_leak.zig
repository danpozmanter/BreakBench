const std = @import("std");

fn worker(io: std.Io, answers: *std.Io.Queue(i64)) void {
    answers.putOneUncancelable(io, 42) catch {};
}

fn firstAnswer(io: std.Io, answers: *std.Io.Queue(i64), workers: *[2]std.Thread) !i64 {
    for (workers) |*w| w.* = try std.Thread.spawn(.{}, worker, .{ io, answers });
    return answers.getOneUncancelable(io);
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    // Io.Queue has no default capacity; an empty buffer makes it unbuffered.
    var buffer: [0]i64 = undefined; // BREAK!
    // CONTROL! var buffer: [2]i64 = undefined;
    var answers: std.Io.Queue(i64) = .init(&buffer);
    var workers: [2]std.Thread = undefined;
    const answer = try firstAnswer(init.io, &answers, &workers);
    try out.print("{d}\n", .{answer});
    for (workers) |w| w.join();
    try out.print("done\n", .{});
}
