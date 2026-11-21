// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var x = try std.math.big.int.Managed.initSet(init.gpa, 1);
    defer x.deinit();
    try x.shiftLeft(&x, 100);
    const s = try x.toString(init.gpa, 10, .lower);
    defer init.gpa.free(s);
    try out.print("{s}\n", .{s});
}
