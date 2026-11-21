const std = @import("std");

const Offset = struct { dx: i64, dy: i64 };

fn move(out: *std.Io.Writer, o: Offset) !void {
    try out.print("{d} {d}\n", .{ o.dx, o.dy });
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    try move(out, .{ .dx = 3, .dy = 4 });
    try move(out, .{ 3, 4 }); // BREAK!
}
