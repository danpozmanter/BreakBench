const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var x = try std.fmt.parseInt(i64, args[1], 10);
    var label: []const u8 = "not one";
    if (x = 1) label = "one"; // BREAK!
    // CONTROL! if (x == 1) label = "one";
    x += 0;
    try out.print("{s}\n", .{label});
}
