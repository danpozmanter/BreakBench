const std = @import("std");

const Point = struct { x: i64, y: i64 };

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var xs = [_]i64{ 3, 1, 2 };
    std.mem.sort(i64, &xs, {}, std.sort.asc(i64));
    var ps = [_]Point{.{ .x = 1, .y = 2 }}; std.mem.sort(Point, &ps, {}, std.sort.asc(Point)); // BREAK!
    try out.print("{d}\n", .{xs[0]});
}
