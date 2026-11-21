const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const x = try std.fmt.parseFloat(f64, args[1]);
    const y = try std.fmt.parseFloat(f64, args[2]);
    const a = x + y;
    try out.print("{s}\n", .{if (a == 0.3) "equal" else "not equal"});
}
