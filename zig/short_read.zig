const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const result = try std.process.run(init.gpa, init.io, .{ .argv = &.{ "sh", "-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234" } });
    try out.print("{s}\n", .{result.stdout});
}
