fn writeReport() !void {
    return error.DiskFull;
}

fn closeLog() void {}

fn saveReport() !void {
    defer closeLog();
    try writeReport();
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    if (saveReport()) |_| {
        try out.print("saved\n", .{});
    } else |_| {
        try out.print("failed\n", .{});
    }
}
