const std = @import("std");
const User = struct { name: ?[]const u8 };

pub fn main() !void {
    var decoded = User{ .name = null };
    _ = &decoded;
    std.debug.print("{d}\n", .{decoded.name.len}); // BREAK!
    _ = decoded.name.?.len; // CONTROL! _ = decoded.name.?.len;
}
