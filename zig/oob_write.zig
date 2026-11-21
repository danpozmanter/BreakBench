const Frame = struct { buf: [4]i64, guard: i64 };

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var f = Frame{ .buf = .{ 0, 0, 0, 0 }, .guard = 7 };
    const idx = try std.fmt.parseInt(usize, args[1], 10);
    f.buf[idx] = 99;
    try out.print("{d}\n", .{f.guard});
}
