// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const n = try std.fmt.parseInt(usize, args[1], 10);
    if (init.gpa.alloc(u8, n)) |buf| {
        init.gpa.free(buf);
        try out.print("allocated\n", .{});
    } else |_| try out.print("allocation failed\n", .{});
}
