// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var b: std.bit_set.StaticBitSet(1024) = .empty;
    b.set(1000);
    try out.print("{} {}\n", .{ b.isSet(1000), b.isSet(999) });
}
