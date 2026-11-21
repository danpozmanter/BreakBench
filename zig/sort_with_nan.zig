const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const nan = std.math.nan(f64);
    var xs = [_]f64{ 5, nan, 3, 1, nan, 4, 2 };
    std.mem.sort(f64, &xs, {}, std.sort.asc(f64));
    var prev = -std.math.inf(f64);
    var ordered = true;
    for (xs) |x| {
        if (std.math.isNan(x)) continue;
        if (x < prev) ordered = false;
        prev = x;
    }
    try out.print("{s}\n", .{if (ordered) "ordered" else "unordered"});
}
