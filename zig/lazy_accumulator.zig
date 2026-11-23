const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const count = try std.fmt.parseInt(usize, args[1], 10);
    const source = try std.Io.Dir.cwd().openFile(init.io, "/dev/zero", .{});
    defer source.close(init.io);
    var total: u64 = 0;
    for (0..count) |_| {
        var message: [4096]u8 = undefined;
        total += try source.readStreaming(init.io, &.{&message});
    }
    try out.print("{d}\n", .{total});
}
