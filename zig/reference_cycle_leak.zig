const Node = struct {
    next: ?*Node = null,
    payload: [2048]u8 = @splat(0),
};

const Obj = struct {
    payload: [2048]u8 = @splat(0),
    callback: *const fn (*Obj) usize,
};

fn payloadLen(self: *Obj) usize {
    return self.payload.len;
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const n = try std.fmt.parseInt(usize, args[1], 10);
    const gpa = init.gpa;
    var total: usize = 0;
    for (0..n) |_| {
        const a = try gpa.create(Node);
        const b = try gpa.create(Node);
        a.* = .{ .next = b };
        b.* = .{ .next = a };
        const o = try gpa.create(Obj);
        o.* = .{ .callback = payloadLen };
        total += o.callback(o);
        gpa.destroy(a);
        gpa.destroy(b);
        gpa.destroy(o);
    }
    try out.print("{s}\n", .{if (total == 0) "unreachable" else "done"});
}
