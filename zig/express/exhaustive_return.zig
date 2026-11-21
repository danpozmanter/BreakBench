// LEVEL: LANGUAGE

const std = @import("std");

fn grade(score: i64) []const u8 {
    return if (score > 50) "pass" else "fail";
}

fn bad(score: i64) []const u8 { // REJECT!
    if (score > 50) return "pass"; // REJECT!
} // REJECT!

pub fn main(init: std.process.Init) !void {
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = bad(60); // REJECT!
    try out.print("{s}\n", .{grade(60)});
}
