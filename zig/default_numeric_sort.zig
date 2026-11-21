const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var scores = [_]i64{ 10, 9, 1 };
    std.mem.sort(i64, &scores, {}, std.sort.asc(i64));
    try out.print("{d} {d} {d}\n", .{ scores[0], scores[1], scores[2] });
}
