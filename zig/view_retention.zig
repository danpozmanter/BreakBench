const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const gpa = init.gpa;
    const n = try std.fmt.parseInt(usize, args[1], 10);
    var heads: std.ArrayList([]u8) = .empty;
    var prefixes: std.ArrayList([]u8) = .empty;
    for (0..n) |i| {
        const buf = try gpa.alloc(u8, 32768);
        defer gpa.free(buf);
        @memset(buf, @truncate(i));
        try heads.append(gpa, try gpa.dupe(u8, buf[0..16]));
        const big = try gpa.alloc(u8, 32768);
        defer gpa.free(big);
        @memset(big, 'a' + @as(u8, @intCast(i % 26)));
        try prefixes.append(gpa, try gpa.dupe(u8, big[0..16]));
    }
    try out.print("{d}\n", .{heads.items.len});
}
