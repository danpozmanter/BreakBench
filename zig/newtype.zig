const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const Meters = struct {
        v: f64,
        fn add(a: @This(), b: @This()) @This() {
            return .{ .v = a.v + b.v };
        }
    };
    const total = Meters.add(.{ .v = 2 }, .{ .v = 3 });
    _ = Meters.add(.{ .v = 2 }, struct { v: f64 }{ .v = 3 }); // BREAK!
    try out.print("{d}\n", .{total.v});
}
