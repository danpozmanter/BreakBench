// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const Pair = struct { a: i64, b: i64 };
    var s: std.AutoHashMapUnmanaged(Pair, void) = .empty;
    defer s.deinit(init.gpa);
    try s.put(init.gpa, .{ .a = 1, .b = 2 }, {});
    try out.print("{}\n", .{s.contains(.{ .a = 1, .b = 2 })});
}
