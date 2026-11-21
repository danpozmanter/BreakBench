const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const ok: u8 = 100;
    const too_big: u8 = 300; // BREAK!
    _ = too_big; // BREAK!
    try out.print("{d}\n", .{ok});
}
