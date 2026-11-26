const std = @import("std");

const limit = base() * 2;
const base_value = std.fmt.parseInt(i64, "10", 10) catch unreachable;

fn base() i64 {
    return base_value;
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    try out.print("{d}\n", .{limit});
}
