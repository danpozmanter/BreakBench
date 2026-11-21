const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const f = try std.Io.Dir.cwd().createFile(init.io, "/tmp/bb_close.txt", .{});
    try f.writeStreamingAll(init.io, "a");
    f.close(init.io);
    try f.writeStreamingAll(init.io, "b"); // BREAK!
    try out.print("ok\n", .{});
}
