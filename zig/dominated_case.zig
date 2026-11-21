const std = @import("std");

const Shape = enum { circle, square };

fn describe(s: Shape) []const u8 {
    return switch (s) {
        .circle => "circle",
        else => "other",
    };
}

fn bad(s: Shape) []const u8 { return switch (s) { .circle => "circle", .circle => "again", else => "other" }; } // BREAK!

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    try out.print("{s}\n", .{describe(.square)});
    _ = bad(.square); // BREAK!
}
