const Callback = struct {
    i: usize,
    fn call(self: Callback) usize {
        return self.i;
    }
};

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var fs: [3]Callback = undefined;
    for (0..3) |i| fs[i] = .{ .i = i };
    try out.print("{d},{d},{d}\n", .{ fs[0].call(), fs[1].call(), fs[2].call() });
}
