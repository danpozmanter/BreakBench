const Evens = struct {
    xs: []const i64,
    i: usize = 0,
    fn next(self: *Evens) ?i64 {
        while (self.i < self.xs.len) {
            const x = self.xs[self.i];
            self.i += 1;
            if (@mod(x, 2) == 0) return x;
        }
        return null;
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
    const xs = [_]i64{ 1, 2, 3, 4, 5, 6 };
    var evens = Evens{ .xs = &xs };
    var total: i64 = 0;
    while (evens.next()) |x| total += x;
    var count: usize = 0;
    while (evens.next()) |_| count += 1; // CONTROL! evens.i = 0; while (evens.next()) |_| count += 1;
    try out.print("{d} {d}\n", .{ total, count });
}
