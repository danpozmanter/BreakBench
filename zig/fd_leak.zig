const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const n = try std.fmt.parseInt(usize, args[1], 10);
    const cwd = std.Io.Dir.cwd();
    const seed = try cwd.createFile(init.io, "/tmp/bb_fd.txt", .{});
    try seed.writeStreamingAll(init.io, "x");
    seed.close(init.io);
    for (0..n) |_| {
        const f = try cwd.openFile(init.io, "/tmp/bb_fd.txt", .{});
        var byte: [1]u8 = undefined;
        _ = try f.readStreaming(init.io, &.{&byte});
    }
    try out.print("done\n", .{});
}
