const std = @import("std");

fn check(out: *std.Io.Writer, n: i64) !void {
    if (n > 100) {
        try out.print("big\n", .{});
        return;
    }
    try out.print("ok\n", .{});
    return;
    try out.print("checked\n", .{}); // BREAK!
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    try check(out, 1);
}
