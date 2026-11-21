const Item = struct { val: i64 };

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const gpa = init.gpa;
    var v: std.ArrayList(Item) = .empty;
    try v.append(gpa, .{ .val = 1 });
    const r = &v.items[0];
    for (0..1000) |i| try v.append(gpa, .{ .val = @intCast(i) });
    var w: std.ArrayList(Item) = .empty;
    try w.append(gpa, .{ .val = 7 });
    r.val = 99;
    try out.print("{d}\n", .{w.items[0].val});
}
