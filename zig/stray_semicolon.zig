const std = @import("std");

fn size(n: i64) []const u8 {
    var label: []const u8 = "small";
    if (n > 5); // CONTROL! if (n > 5)
    {
        label = "big";
    }
    return label;
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    try out.print("{s}\n", .{size(try std.fmt.parseInt(i64, args[1], 10))});
    try out.print("{s}\n", .{size(try std.fmt.parseInt(i64, args[2], 10))});
}
