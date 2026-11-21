// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const a: [16]u8 = @splat(7);
    const b: [16]u8 = @splat(7);
    try out.print("{s}\n", .{if (std.crypto.timing_safe.eql([16]u8, a, b)) "equal" else "different"});
}
