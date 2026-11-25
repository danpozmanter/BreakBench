const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const a = try std.fmt.parseInt(i64, args[1], 10);
    const b = try std.fmt.parseInt(i64, args[2], 10);
    try out.print("{d}\n", .{@divTrunc(a, b)}); // CONTROL! try out.print("{d}\n", .{@divTrunc(@as(i128, a), b)});
}
