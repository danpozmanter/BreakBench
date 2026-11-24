const std = @import("std");

const ValidationError = error{InvalidName};

fn validate(name: []const u8) ValidationError!void {
    if (name.len == 0) return error.InvalidName;
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    if (validate("ada")) |_| {
        try out.print("valid\n", .{});
    } else |_| {
        try out.print("invalid\n", .{});
    }
}
