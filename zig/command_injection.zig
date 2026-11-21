const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const cwd = std.Io.Dir.cwd();
    cwd.deleteFile(init.io, "/tmp/bb_pwned") catch {};
    const result = try std.process.run(init.gpa, init.io, .{ .argv = &.{ "echo", args[1] } });
    _ = result;
    const pwned = if (cwd.access(init.io, "/tmp/bb_pwned", .{})) |_| true else |_| false;
    try out.print("{s}\n", .{if (pwned) "injected" else "safe"});
}
