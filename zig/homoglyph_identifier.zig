const std = @import("std");

fn isAdmin(user: []const u8) bool {
    return std.mem.eql(u8, user, "root");
}

fn isАdmin(user: []const u8) bool { _ = user; return true; } // BREAK!

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var user: []const u8 = "guest";
    _ = &user;
    try out.print("{s}\n", .{if (isAdmin("root")) "admin" else "guest"});
    try out.print("{s}\n", .{if (isАdmin(user)) "admin" else "guest"}); // CONTROL! try out.print("{s}\n", .{if (isAdmin(user)) "admin" else "guest"});
}
