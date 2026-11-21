const std = @import("std");

fn add(count: *i64) void {
    for (0..1_000_000) |_| count.* += 1;
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var count: i64 = 0;
    const a = try std.Thread.spawn(.{}, add, .{&count});
    const b = try std.Thread.spawn(.{}, add, .{&count});
    a.join();
    b.join();
    try out.print("{d}\n", .{count});
}
