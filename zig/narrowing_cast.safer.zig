const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const v = try std.fmt.parseInt(i64, args[1], 10);
    const b: u8 = std.math.cast(u8, v) orelse { try out.print("out of range\n", .{}); return; };
    try out.print("{d}\n", .{b});
}
