const Value = union(enum) { int: i64, text: []const u8 };

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var v: Value = .{ .int = 42 };
    _ = &v;
    try out.print("{d}\n", .{v.text.len}); // CONTROL! switch (v) { .text => |t| try out.print("{d}\n", .{t.len}), .int => try out.print("not text\n", .{}) }
}
