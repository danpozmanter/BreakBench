const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const file = try std.Io.Dir.cwd().createFile(init.io, "/tmp/bb_report.txt", .{});
    var buf: [4096]u8 = undefined;
    var report = file.writerStreaming(init.io, &buf);
    try report.interface.print("total=42\n", .{});
    // CONTROL! try report.interface.flush();
}
