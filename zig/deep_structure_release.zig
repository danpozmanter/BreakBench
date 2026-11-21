const Node = struct {
    value: i64,
    next: ?*Node,
};

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const n = try std.fmt.parseInt(i64, args[1], 10);
    const gpa = init.gpa;
    var head: ?*Node = null;
    var i: i64 = 0;
    while (i < n) : (i += 1) {
        const node = try gpa.create(Node);
        node.* = .{ .value = i, .next = head };
        head = node;
    }
    while (head) |node| {
        head = node.next;
        gpa.destroy(node);
    }
    try out.print("done\n", .{});
}
