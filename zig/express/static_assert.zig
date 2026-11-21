// LEVEL: LANGUAGE

const std = @import("std");

const byte_limit = 255;

comptime {
    if (100 > byte_limit) @compileError("100 does not fit in a byte");
}
comptime { if (300 > byte_limit) @compileError("300 does not fit in a byte"); } // REJECT!

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    try out.print("100\n", .{});
}
