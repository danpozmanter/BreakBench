const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const line: []const u8 = args[1];
    const pos = std.mem.indexOfScalar(u8, line, ':');
    try out.print("{s}\n", .{line[pos + 1 ..]}); // CONTROL! try out.print("{s}\n", .{if (pos) |p| line[p + 1 ..] else ""});
}
