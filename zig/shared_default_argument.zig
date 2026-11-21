fn addItem(gpa: std.mem.Allocator, item: []const u8, cart: ?*std.ArrayList([]const u8)) !std.ArrayList([]const u8) {
    var list: std.ArrayList([]const u8) = if (cart) |c| c.* else .empty;
    try list.append(gpa, item);
    return list;
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const gpa = init.arena.allocator();
    _ = try addItem(gpa, "x", null);
    const b = try addItem(gpa, "y", null);
    try out.print("{d}\n", .{b.items.len});
}
