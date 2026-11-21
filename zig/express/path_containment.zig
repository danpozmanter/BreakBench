// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const p = try std.fs.path.resolve(init.arena.allocator(), &.{ "/srv/app", "../../etc/passwd" });
    const inside = std.mem.startsWith(u8, p, "/srv/app/");
    try out.print("{s}\n", .{if (inside) "inside" else "outside"});
}
