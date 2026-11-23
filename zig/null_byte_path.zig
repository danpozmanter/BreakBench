const std = @import("std");

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const cwd = std.Io.Dir.cwd();
    cwd.createDirPath(init.io, "/tmp/bb_files") catch {};
    const seed = try cwd.createFile(init.io, "/tmp/bb_files/report.txt", .{});
    try seed.writeStreamingAll(init.io, "secret\n");
    seed.close(init.io);

    const name = "report.txt\x00.png";
    if (!std.mem.endsWith(u8, name, ".png")) {
        try out.print("rejected\n", .{});
        return;
    }
    const path = try std.mem.concat(init.gpa, u8, &.{ "/tmp/bb_files/", name });
    defer init.gpa.free(path);
    const image = cwd.openFile(init.io, path, .{}) catch {
        try out.print("rejected\n", .{});
        return;
    };
    defer image.close(init.io);
    var line: [64]u8 = undefined;
    const n = try image.readStreaming(init.io, &.{&line});
    try out.print("{s}", .{line[0..n]});
}
