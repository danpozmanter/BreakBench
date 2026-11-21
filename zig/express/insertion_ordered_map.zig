// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var m: std.StringArrayHashMapUnmanaged(i64) = .empty;
    defer m.deinit(init.gpa);
    try m.put(init.gpa, "c", 1);
    try m.put(init.gpa, "a", 2);
    try m.put(init.gpa, "b", 3);
    for (m.keys(), 0..) |k, i| try out.print("{s}{s}", .{ if (i == 0) "" else " ", k });
    try out.print("\n", .{});
}
