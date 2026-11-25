const std = @import("std");

const lock = "/tmp/bb_scratch/reader.lock";

const Rows = struct {
    io: std.Io,
    lines: []const []const u8 = &.{ "alpha", "beta", "gamma" },
    index: usize = 0,

    fn next(self: *Rows) ?[]const u8 {
        if (self.index < self.lines.len) {
            self.index += 1;
            return self.lines[self.index - 1];
        }
        std.Io.Dir.cwd().deleteFile(self.io, lock) catch {};
        return null;
    }
};

fn rows(io: std.Io) !Rows {
    const file = try std.Io.Dir.cwd().createFile(io, lock, .{});
    file.close(io);
    return .{ .io = io };
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var it = try rows(init.io);
    while (it.next()) |line| {
        try out.print("{s}\n", .{line});
        break; // BREAK!
    }
}
