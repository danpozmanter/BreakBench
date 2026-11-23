const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const parsed = try std.json.parseFromSlice(std.json.Value, init.gpa, "{\"id\": 9007199254740993}", .{});
    defer parsed.deinit();
    try std.json.Stringify.value(parsed.value.object.get("id").?, .{}, out);
    try out.print("\n", .{});
}
