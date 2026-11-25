const std = @import("std");

fn parseOrder(gpa: std.mem.Allocator, line: []const u8) !i64 {
    var parts: std.ArrayList([]const u8) = .empty;
    defer parts.deinit(gpa);
    var it = std.mem.splitScalar(u8, line, ',');
    while (it.next()) |part| try parts.append(gpa, part);
    return std.fmt.parseInt(i64, parts.items[2], 10); // BREAK!
    // CONTROL! return std.fmt.parseInt(i64, parts.items[1], 10);
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    if (parseOrder(init.gpa, "widget,5")) |qty| {
        try out.print("{d}\n", .{qty});
    } else |_| {
        try out.print("invalid order\n", .{});
    }
}
