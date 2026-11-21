// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const io = init.io;
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var child = try std.process.spawn(io, .{ .argv = &.{ "sleep", "10" } });
    try io.sleep(.fromMilliseconds(100), .awake);
    try std.posix.kill(child.id.?, std.posix.SIG.KILL);
    const term = try child.wait(io);
    try out.print("{s}\n", .{if (term == .signal) "killed" else "finished"});
}
