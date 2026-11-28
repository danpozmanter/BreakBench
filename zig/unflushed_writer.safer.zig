const std = @import("std");

pub fn main(init: std.process.Init) !void {
    try std.Io.Dir.cwd().writeFile(init.io, .{ .sub_path = "/tmp/bb_report.txt", .data = "total=42\n" });
}
