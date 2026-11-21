const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const M = std.StaticStringMap(i64);
    const m = M.initComptime(.{ .{ "a", 1 }, .{ "a", 2 } }); // CONTROL! const m = M.initComptime(.{ .{ "a", 1 }, .{ "b", 2 } });
    var reachable: usize = 0;
    for (m.keys(), 0..) |k, i| {
        if (m.getIndex(k).? == i) reachable += 1;
    }
    try out.print("{d}\n", .{reachable});
}
