const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const gpa = init.arena.allocator();
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var seen: std.AutoHashMapUnmanaged([2]i32, void) = .empty;
    var key = [2]i32{ 1, 2 };
    try seen.put(gpa, key, {});
    key[0] = 9;
    var it = seen.keyIterator();
    while (it.next()) |e| {
        try out.print("{s}\n", .{if (seen.contains(e.*)) "found" else "lost"});
    }
}
