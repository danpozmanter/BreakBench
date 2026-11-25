const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const count = try std.fmt.parseInt(i64, args[1], 10);
    const mean = 0.0 / @as(f64, @floatFromInt(count));
    try std.json.Stringify.value(.{ .mean = mean }, .{}, out); // CONTROL! if (std.math.isNan(mean)) try out.print("refused", .{}) else try std.json.Stringify.value(.{ .mean = mean }, .{}, out);
    try out.print("\n", .{});
}
