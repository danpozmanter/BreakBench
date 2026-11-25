const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var grid = std.mem.zeroes([3][3]i64);
    grid[0][0] = 1;
    var ones: usize = 0;
    for (grid) |row| {
        for (row) |cell| {
            if (cell == 1) ones += 1;
        }
    }
    try out.print("{d}\n", .{ones});
}
