// LEVEL: LANGUAGE

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const S = struct {
        fn work(a: bool) error{ A, B }!void {
            return if (a) error.A else error.B;
        }
        fn step(o: *std.Io.Writer, a: bool) !void {
            work(a) catch |e| switch (e) {
                error.A => try o.print("caught A\n", .{}),
                else => return e,
            };
        }
    };
    try S.step(out, true);
    S.step(out, false) catch |e| if (e == error.B) try out.print("passed B\n", .{});
}
