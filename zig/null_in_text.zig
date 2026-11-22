const std = @import("std");

fn findName(id: i64) ?[]const u8 {
    return if (id == 1) "alice" else null;
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const name = findName(try std.fmt.parseInt(i64, args[1], 10));
    try out.print("hello, {s}\n", .{name}); // CONTROL! try out.print("hello, {s}\n", .{name orelse "nobody"});
}
