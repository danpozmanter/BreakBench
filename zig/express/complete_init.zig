// LEVEL: LANGUAGE

const std = @import("std");

const Config = struct {
    timeout: u32,
    retries: u32,
};

pub fn main(init: std.process.Init) !void {
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const c = Config{ .timeout = 5, .retries = 3 };
    const partial = Config{ .timeout = 5 }; // REJECT!
    _ = partial; // REJECT!
    try out.print("{d} {d}\n", .{ c.timeout, c.retries });
}
