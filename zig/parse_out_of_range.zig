const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    // parseInt answers an error union, so the number is reached only through a check.
    const n = std.fmt.parseInt(i64, args[1], 10) catch {
        try out.print("invalid\n", .{});
        return;
    };
    try out.print("{d}\n", .{n});
}
