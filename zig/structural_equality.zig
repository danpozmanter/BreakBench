const std = @import("std");

const P = struct { x: i64, y: i64 };

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const a = P{ .x = 1, .y = 2 };
    const b = P{ .x = 1, .y = 2 };
    try out.print("{s}\n", .{if (a == b) "equal" else "different"}); // CONTROL! try out.print("{s}\n", .{if (std.meta.eql(a, b)) "equal" else "different"});
}
