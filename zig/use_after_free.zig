const Rec = struct { value: i64, pad: [3]i64 = .{ 0, 0, 0 } };

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const gpa = init.gpa;
    const a = try gpa.create(Rec);
    a.* = .{ .value = 1234 };
    const b = a;
    gpa.destroy(a); // BREAK!
    for (0..16) |_| {
        const c = try gpa.create(Rec);
        c.* = .{ .value = 6666 };
    }
    try out.print("{d}\n", .{b.value});
    // CONTROL! gpa.destroy(a);
}
