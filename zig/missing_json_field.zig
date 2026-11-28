const std = @import("std");

const User = struct { name: []const u8, age: i64 };

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const parsed = std.json.parseFromSlice(User, init.gpa, "{\"name\": \"Ada\"}", .{}) catch { // CONTROL! const parsed = std.json.parseFromSlice(User, init.gpa, "{\"name\": \"Ada\", \"age\": 36}", .{}) catch {
        try out.print("invalid\n", .{});
        return;
    };
    defer parsed.deinit();
    try out.print("{d}\n", .{parsed.value.age + 1});
}
