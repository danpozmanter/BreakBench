const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const gpa = init.gpa;
    const count = try std.fmt.parseInt(usize, args[1], 10);
    // CONTROL! if (count > 1 << 27) { try out.print("too large\n", .{}); return; }
    const size = count * 8;
    const records = try gpa.alloc(u8, size);
    defer gpa.free(records);
    records[8] = 99;
    try out.print("stored\n", .{});
}
