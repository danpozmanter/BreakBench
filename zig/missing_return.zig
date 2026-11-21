fn grade(score: i64) []const u8 {
    if (score > 50) return "pass";
    if (score < 50) return "fail";
    // CONTROL! return "borderline";
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    try out.print("{s}\n", .{grade(try std.fmt.parseInt(i64, args[1], 10))});
}
