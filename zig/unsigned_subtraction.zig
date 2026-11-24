const std = @import("std");

const HEADER = 5;

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const message = args[1];
    const payload = message.len - HEADER; // CONTROL! const len = message.len;
    if (payload < 0) { // CONTROL! if (len < HEADER) {
        try out.print("short\n", .{});
    } else {
        try out.print("{d}\n", .{payload}); // CONTROL! try out.print("{d}\n", .{len - HEADER});
    }
}
