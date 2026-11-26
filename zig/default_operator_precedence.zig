const std = @import("std");

fn cachedCount(name: []const u8) ?i64 {
    return if (std.mem.eql(u8, name, "ada")) 4 else null;
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const cached = cachedCount(args[1]);
    const count = cached orelse 0 + 1; // CONTROL! const count = (cached orelse 0) + 1;
    try out.print("{d}\n", .{count});
}
