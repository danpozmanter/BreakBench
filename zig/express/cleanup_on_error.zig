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
        fn use(o: *std.Io.Writer, fail: bool) !void {
            defer o.print("released\n", .{}) catch {};
            if (fail) return error.Bad;
        }
    };
    S.use(out, false) catch {};
    S.use(out, true) catch {};
}
