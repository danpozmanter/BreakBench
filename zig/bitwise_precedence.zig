const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const x = try std.fmt.parseInt(i64, args[1], 10);
    const even = x & 1 == 0; // BREAK!
    // CONTROL! const even = (x & 1) == 0;
    try out.print("{s}\n", .{if (even) "even" else "odd"});
}
