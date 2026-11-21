// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const handler = struct {
        var stop = std.atomic.Value(bool).init(false);
        fn on(_: std.posix.SIG) callconv(.c) void {
            stop.store(true, .seq_cst);
        }
    };
    std.posix.sigaction(std.posix.SIG.TERM, &.{ .handler = .{ .handler = handler.on }, .mask = std.posix.sigemptyset(), .flags = 0 }, null);
    try std.posix.kill(std.os.linux.getpid(), std.posix.SIG.TERM);
    if (handler.stop.load(.seq_cst)) try out.print("cleaned up\n", .{});
}
