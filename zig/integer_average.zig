const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var values = [_]i64{ 3, 4 };
    _ = &values;
    const sum = values[0] + values[1];
    const count: i64 = @intCast(values[0] - values[0] + 2);
    const avg: f64 = @divTrunc(sum, count); // BREAK!
    // CONTROL! const avg: f64 = @as(f64, @floatFromInt(sum)) / @as(f64, @floatFromInt(count));
    try out.print("{d:.1}\n", .{avg});
}
