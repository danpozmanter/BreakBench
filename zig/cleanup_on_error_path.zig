const std = @import("std");

const scratch = "/tmp/bb_scratch/export.csv";

fn exportRows(io: std.Io, rows: []const []const u8) !void {
    const cwd = std.Io.Dir.cwd();
    const file = try cwd.createFile(io, scratch, .{});
    defer file.close(io);
    var buf: [256]u8 = undefined;
    var csv = file.writerStreaming(io, &buf);
    try csv.interface.writeAll("qty\n");
    for (rows) |row| {
        const qty = try std.fmt.parseInt(i64, row, 10); // BREAK!
        // CONTROL! const qty = std.fmt.parseInt(i64, row, 10) catch |err| { cwd.deleteFile(io, scratch) catch {}; return err; };
        try csv.interface.print("{d}\n", .{qty});
    }
    try csv.interface.flush();
    try cwd.deleteFile(io, scratch);
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    exportRows(init.io, &.{ "3", "x", "5" }) catch try out.print("export failed\n", .{});
}
