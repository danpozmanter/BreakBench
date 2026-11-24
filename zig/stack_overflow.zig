fn walk(n: i64) i64 {
    if (n == 0) return 0;
    return @mod(walk(n - 1) * 31 + n, 1_000_000_007);
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const n = try std.fmt.parseInt(i64, args[1], 10);
    try out.print("{d}\n", .{walk(n)}); // CONTROL! var acc: i64 = 0; var i: i64 = 1; while (i <= n) : (i += 1) acc = @mod(acc * 31 + i, 1_000_000_007); try out.print("{d}\n", .{acc});
}
