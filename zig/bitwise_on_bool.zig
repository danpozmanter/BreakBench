const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var s: []const u8 = "";
    _ = &s;
    const yes = (s.len > 0) & (s[0] == 'a'); // CONTROL! const yes = s.len > 0 and s[0] == 'a';
    try out.print("{s}\n", .{if (yes) "yes" else "no"});
}
