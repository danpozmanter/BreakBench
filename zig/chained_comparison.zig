const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const x = try std.fmt.parseInt(i64, args[1], 10);
    const inside = 1 < x < 3; // BREAK!
    // CONTROL! const inside = 1 < x and x < 3;
    try out.print("{s}\n", .{if (inside) "inside" else "outside"});
}
