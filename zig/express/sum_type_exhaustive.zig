// LEVEL: LANGUAGE

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const Shape = union(enum) { circle: f64, square: f64 };
    const s: Shape = .{ .circle = 1 };
    const name = switch (s) {
        .circle => "circle",
        .square => "square",
    };
    _ = switch (s) { .circle => "circle" }; // REJECT!
    try out.print("{s}\n", .{name});
}
