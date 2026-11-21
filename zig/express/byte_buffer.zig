// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var buf: std.ArrayList(u8) = .empty;
    defer buf.deinit(init.gpa);
    for (0..100_000) |i| try buf.append(init.gpa, @truncate(i));
    try out.print("{d}\n", .{buf.items.len});
}
