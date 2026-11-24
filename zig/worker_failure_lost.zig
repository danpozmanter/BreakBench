fn sum(items: []const [:0]const u8, total: *i64) !void {
    for (items) |item| total.* += try std.fmt.parseInt(i64, item, 10); // CONTROL! for (items) |item| total.* += std.fmt.parseInt(i64, item, 10) catch { failed = true; return; };
}
// CONTROL! var failed = false;

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var total: i64 = 0;
    const worker = try std.Thread.spawn(.{}, sum, .{ args[1..], &total });
    worker.join();
    try out.print("total {d}\n", .{total}); // CONTROL! if (failed) try out.print("failed\n", .{}) else try out.print("total {d}\n", .{total});
}
