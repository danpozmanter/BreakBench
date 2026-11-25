const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var passes: i64 = 0;
    var i: u8 = 0; // BREAK!
    // CONTROL! var i: u16 = 0;
    while (i < 300) {
        passes += 1;
        i += 1;
    }
    try out.print("{d}\n", .{passes});
}
