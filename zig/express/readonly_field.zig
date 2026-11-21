// LEVEL: LANGUAGE

const std = @import("std");

const Config = struct { port: u16 };

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const c = Config{ .port = 8080 };
    c.port = 1; // REJECT!
    try out.print("{d}\n", .{c.port});
}
