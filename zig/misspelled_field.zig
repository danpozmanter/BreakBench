const Config = struct { color: []const u8 = "blue" };

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var cfg = Config{};
    cfg.colour = "red"; // BREAK!
    cfg.color = cfg.color;
    try out.print("{s}\n", .{cfg.color});
}
