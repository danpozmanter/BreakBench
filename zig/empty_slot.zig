const std = @import("std");

const User = struct { name: []const u8 };

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var users: [3]User = undefined; // CONTROL! var users: [3]?User = .{ null, null, null };
    users[1] = .{ .name = "bob" };
    users[2] = .{ .name = "carol" };
    try out.print("{d}\n", .{users[0].name.len}); // CONTROL! if (users[0]) |u| try out.print("{d}\n", .{u.name.len}) else try out.print("missing\n", .{});
}
