const Color = enum { red, green, blue };

fn name(c: Color) []const u8 {
    return switch (c) {
        .red => "red",
        .green => "green",
        // CONTROL! .blue => "blue",
    };
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const i = try std.fmt.parseInt(u2, args[1], 10);
    try out.print("{s}\n", .{name(@enumFromInt(i))});
}
