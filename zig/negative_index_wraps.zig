const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const readings = [_]i64{ 10, 20, 30 };
    const i = try std.fmt.parseInt(usize, args[1], 10);
    try out.print("{d}\n", .{readings[i] - readings[i - 1]}); // CONTROL! if (i > 0) try out.print("{d}\n", .{readings[i] - readings[i - 1]}) else try out.print("no previous\n", .{});
}
