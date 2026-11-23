const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    try std.process.run(init.gpa, init.io, .{ .argv = &.{ "sh", "-c", "exit 3" } }); // CONTROL! _ = try std.process.run(init.gpa, init.io, .{ .argv = &.{ "sh", "-c", "exit 3" } });
    try out.print("backed up\n", .{});
}
