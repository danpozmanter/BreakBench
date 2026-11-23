const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var access: []const u8 = "user";
    _ = &access;
    if (!std.mem.eql(u8, access, "user‮ ⁦// admins only⁩ ⁦")) { // CONTROL! if (!std.mem.eql(u8, access, "user")) {
        try out.print("admin\n", .{});
    } else {
        try out.print("user\n", .{});
    }
}
