// LEVEL: LANGUAGE

const std = @import("std");

const Config = struct { name: []const u8 };

pub fn main(init: std.process.Init) !void {
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const c = Config{ .name = "app" };
    const missing: *const Config = null; // REJECT!
    _ = missing; // REJECT!
    try out.print("{s}\n", .{c.name});
}
