const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const done: i64 = 3;
    const total: i64 = 5;
    _ = total; // BREAK!
    try out.print("{d} of {d}\n", .{done}); // CONTROL! try out.print("{d} of {d}\n", .{ done, total });
}
