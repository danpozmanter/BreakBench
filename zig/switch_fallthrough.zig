const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const n = try std.fmt.parseInt(i64, args[1], 10);
    const name = switch (n) {
        1 => "one",
        2 => "two",
        else => "other",
    };
    try out.print("{s}\n", .{name});
}
