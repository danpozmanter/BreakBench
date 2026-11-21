fn applyUpdate(weights: []i64) void {
    weights[1] = 5;
    weights[3] = 0;
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const gpa = init.gpa;
    var weights: std.ArrayList(i64) = .empty;
    defer weights.deinit(gpa);
    try weights.appendSlice(gpa, &.{ 3, 3, 3, 3 });
    const before = weights;
    applyUpdate(weights.items);
    var changes: usize = 0;
    for (before.items, weights.items) |b, w| {
        if (b != w) changes += 1;
    }
    try out.print("{d}\n", .{changes});
}
