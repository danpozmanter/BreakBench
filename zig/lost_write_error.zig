const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const f = try std.Io.Dir.cwd().createFile(init.io, "/dev/full", .{});
    defer f.close(init.io);
    var buf: [64]u8 = undefined;
    var fw = f.writerStreaming(init.io, &buf);
    try fw.interface.writeAll("data\n");
    try fw.interface.flush();
    try out.print("saved\n", .{});
}
