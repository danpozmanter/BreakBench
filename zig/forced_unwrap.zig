const std = @import("std");

fn find(id: i64) ?i64 {
    return if (id == 1) 36 else null;
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    try out.print("before\n", .{});
    try out.flush();
    var id: i64 = 2;
    _ = &id;
    try out.print("{d}\n", .{find(id).? + 1}); // CONTROL! if (find(id)) |a| try out.print("{d}\n", .{a + 1}) else try out.print("missing\n", .{});
}
