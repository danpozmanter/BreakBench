fn isOdd(n: i64) bool {
    return n % 2 == 1; // CONTROL! return @mod(n, 2) == 1;
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
    try out.print("{s}\n", .{if (isOdd(n)) "odd" else "even"});
}
