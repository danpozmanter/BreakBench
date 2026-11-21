// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const cmp = struct {
        fn f(a: i64, b: i64) std.math.Order {
            return std.math.order(a, b);
        }
    }.f;
    const T = std.Treap(i64, cmp);
    var t: T = .{};
    var nodes: [3]T.Node = undefined;
    for ([_]i64{ 3, 1, 2 }, 0..) |k, i| {
        var entry = t.getEntryFor(k);
        entry.set(&nodes[i]);
    }
    var node = t.getMin();
    var first = true;
    while (node) |n| : (node = n.next()) {
        try out.print("{s}{d}", .{ if (first) "" else " ", n.key });
        first = false;
    }
    try out.print("\n", .{});
}
