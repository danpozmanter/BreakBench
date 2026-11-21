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
        fn f(a: []const u8, b: []const u8) std.math.Order {
            return std.mem.order(u8, a, b);
        }
    }.f;
    const T = std.Treap([]const u8, cmp);
    var t: T = .{};
    var nodes: [3]T.Node = undefined;
    for ([_][]const u8{ "c", "a", "b" }, 0..) |k, i| {
        var entry = t.getEntryFor(k);
        entry.set(&nodes[i]);
    }
    var node = t.getMin();
    var first = true;
    while (node) |n| : (node = n.next()) {
        try out.print("{s}{s}", .{ if (first) "" else " ", n.key });
        first = false;
    }
    try out.print("\n", .{});
}
