const std = @import("std");

const User = struct { name: []const u8 };
const Session = struct { user: ?User };

fn logout(session: *Session) void {
    session.user = null;
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var session = Session{ .user = User{ .name = "alice" } };
    if (session.user) |user| {
        logout(&session);
        try out.print("{d}\n", .{user.name.len});
    }
}
