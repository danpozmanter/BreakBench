const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var jobs: std.ArrayList(i64) = .empty;
    try jobs.appendSlice(init.arena.allocator(), &.{ 1, 2, 3 });
    std.debug.assert(jobs.pop() == 3);
    try out.print("{d}\n", .{jobs.items.len});
}
