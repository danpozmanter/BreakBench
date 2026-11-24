const std = @import("std");

const Frame = struct { buf: [4]i64, secret: i64 };

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const f = Frame{ .buf = .{ 1, 2, 3, 4 }, .secret = 42 };
    const idx = try std.fmt.parseInt(usize, args[1], 10);
    try out.print("{d}\n", .{f.buf[idx]}); // CONTROL! if (idx < f.buf.len) try out.print("{d}\n", .{f.buf[idx]}) else try out.print("out of range\n", .{});
}
