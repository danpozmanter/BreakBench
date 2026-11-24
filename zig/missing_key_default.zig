const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const gpa = init.arena.allocator();
    const args = try init.minimal.args.toSlice(gpa);
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var stock: std.StringHashMapUnmanaged(i64) = .empty;
    try stock.put(gpa, "apple", 3);
    try stock.put(gpa, "plum", 4);
    const name = args[1];
    try out.print("{d}\n", .{stock.get(name).? + 5}); // CONTROL! if (stock.get(name)) |n| try out.print("{d}\n", .{n + 5}) else try out.print("unknown\n", .{});
}
