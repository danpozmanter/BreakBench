const std = @import("std");

const Report = struct {
    fn write(_: *Report, _: []const u8) error{DiskFull}!void {
        return error.DiskFull;
    }

    fn close(_: *Report) error{CloseFailed}!void {
        return error.CloseFailed;
    }
};

fn save() !void {
    var report: Report = .{};
    defer report.close() catch {};
    try report.write("totals");
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    save() catch |err| {
        try out.print("{s}\n", .{if (err == error.DiskFull) "disk full" else "close failed"});
    };
}
