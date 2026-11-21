const std = @import("std");

const User = struct { name: []const u8 };

fn findUser(id: i64) ?User {
    return if (id == 1) User{ .name = "alice" } else null;
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const u = findUser(try std.fmt.parseInt(i64, args[1], 10));
    try out.print("{d}\n", .{u.name.len}); // BREAK!
    try out.print("{any}\n", .{u});
}
