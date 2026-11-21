const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const ids = [_]i64{ 10, 20, 30 };
    const id = args[1];
    const found = std.mem.indexOfScalar(i64, &ids, id) != null; // CONTROL! const found = std.mem.indexOfScalar(i64, &ids, try std.fmt.parseInt(i64, id, 10)) != null;
    try out.print("{s}\n", .{if (found) "found" else "missing"});
}
