const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const claimed = try std.fmt.parseInt(usize, args[1], 10);
    var buf: [64]u8 = @splat(0);
    @memcpy(buf[2..17], "SECRET-KEY-0042");
    @memcpy(buf[0..2], "hi");
    const payload: []const u8 = buf[0..2];
    // CONTROL! if (claimed > payload.len) { try out.print("invalid\n", .{}); return; }
    const reply = payload[0..claimed];
    try out.print("{s}\n", .{reply});
}
