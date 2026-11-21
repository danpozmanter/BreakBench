const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const joined = try std.fs.path.join(init.gpa, &.{ "/srv/app/uploads", args[1] });
    const inside = std.mem.startsWith(u8, joined, "/srv/app/uploads/");
    try out.print("{s}\n", .{if (inside) "inside" else "escaped"});
}
