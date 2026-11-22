const std = @import("std");

const Point = struct { x: i64, y: i64, label: []const u8 };

const PointContext = struct {
    pub fn hash(_: PointContext, p: Point) u64 {
        var h = std.hash.Wyhash.init(0);
        std.hash.autoHashStrat(&h, p, .Deep);
        return h.final();
    }
    pub fn eql(_: PointContext, a: Point, b: Point) bool {
        return a.x == b.x and a.y == b.y;
    }
};

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const gpa = init.arena.allocator();
    var s: std.HashMapUnmanaged(Point, void, PointContext, 80) = .empty;
    try s.put(gpa, .{ .x = 1, .y = 2, .label = "a" }, {});
    try s.put(gpa, .{ .x = 1, .y = 2, .label = "b" }, {});
    try out.print("{d}\n", .{s.count()});
}
