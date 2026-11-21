// LEVEL: STD

const std = @import("std");

const Config = struct { port: i64, debug: bool };

pub fn main(init: std.process.Init) !void {
    const gpa = init.gpa;
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const good = try std.json.parseFromSlice(Config, gpa, "{\"port\": 8080, \"debug\": true}", .{});
    defer good.deinit();
    const bad = std.json.parseFromSlice(Config, gpa, "{port: 8080}", .{});
    if (bad) |parsed| {
        parsed.deinit();
        try out.print("{d} valid\n", .{good.value.port});
    } else |_| {
        try out.print("{d} invalid\n", .{good.value.port});
    }
}
