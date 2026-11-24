const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const s = try std.fmt.parseInt(u32, args[1], 10);
    const one: u64 = 1; // BREAK!
    try out.print("{d}\n", .{one << @intCast(s)}); // CONTROL! try out.print("{d}\n", .{@as(u128, 1) << @intCast(s)});
}
