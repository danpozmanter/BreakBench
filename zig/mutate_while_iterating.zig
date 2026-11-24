const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const gpa = init.gpa;
    var xs: std.ArrayList(i64) = .empty;
    defer xs.deinit(gpa);
    try xs.appendSlice(gpa, &.{ 1, 2, 2, 3 });
    for (xs.items) |x| { // CONTROL! var k: usize = xs.items.len;
        if (x == 2) { // CONTROL! while (k > 0) {
            const pos = std.mem.indexOfScalar(i64, xs.items, x).?; // CONTROL! k -= 1;
            _ = xs.orderedRemove(pos); // CONTROL! if (xs.items[k] == 2) _ = xs.orderedRemove(k);
        }
    } // BREAK!
    for (xs.items, 0..) |x, i| {
        if (i > 0) try out.print(",", .{});
        try out.print("{d}", .{x});
    }
    try out.print("\n", .{});
}
