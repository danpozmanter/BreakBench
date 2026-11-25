const std = @import("std");

fn totalUntilStop(codes: []const [:0]const u8) !i64 {
    var total: i64 = 0;
    for (codes) |c| {
        const code = try std.fmt.parseInt(i64, c, 10);
        switch (code) {
            0 => break,
            else => total += code,
        }
    }
    return total;
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    try out.print("{d}\n", .{try totalUntilStop(args[1..])});
}
