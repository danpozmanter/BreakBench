// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const io = init.io;
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const cwd = std.Io.Dir.cwd();
    const path = "/tmp/bb_perm.txt";
    cwd.deleteFile(io, path) catch {};
    const file = try cwd.createFile(io, path, .{ .exclusive = true, .permissions = .fromMode(0o600) });
    file.close(io);
    const st = try cwd.statFile(io, path, .{});
    try out.print("{o}\n", .{st.permissions.toMode() & 0o777});
    try cwd.deleteFile(io, path);
}
