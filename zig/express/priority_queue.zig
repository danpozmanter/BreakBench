// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const lessThan = struct {
        fn f(_: void, a: i64, b: i64) std.math.Order {
            return std.math.order(a, b);
        }
    }.f;
    var q: std.PriorityQueue(i64, void, lessThan) = .empty;
    defer q.deinit(init.gpa);
    for ([_]i64{ 3, 1, 2 }) |v| try q.push(init.gpa, v);
    var first = true;
    while (q.pop()) |v| {
        try out.print("{s}{d}", .{ if (first) "" else " ", v });
        first = false;
    }
    try out.print("\n", .{});
}
