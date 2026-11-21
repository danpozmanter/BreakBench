// LEVEL: LANGUAGE

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const parsePort = struct {
        fn f(s: []const u8) !u16 {
            return std.fmt.parseInt(u16, s, 10);
        }
    }.f;
    if (parsePort("x")) |p| try out.print("{d}\n", .{p}) else |_| try out.print("error\n", .{});
}
