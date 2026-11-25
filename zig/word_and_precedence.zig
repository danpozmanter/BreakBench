const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const ready = std.mem.eql(u8, args[1], "yes");
    const approved = std.mem.eql(u8, args[2], "yes");
    const ok = ready and approved;
    try out.print("{s}\n", .{if (ok) "go" else "wait"});
}
