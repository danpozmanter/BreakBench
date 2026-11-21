const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const s = try std.mem.concat(init.gpa, u8, &.{ "ab", args[1] });
    defer init.gpa.free(s);
    const same = s == "abc"; // BREAK!
    // CONTROL! const same = std.mem.eql(u8, s, "abc");
    try out.print("{s}\n", .{if (same) "equal" else "different"});
}
