const std = @import("std");

const Rec = struct { data: [4096]u8 };

var last: ?*volatile Rec = null;

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const n = try std.fmt.parseInt(usize, args[1], 10);
    for (0..n) |_| {
        const rec = try init.gpa.create(Rec);
        @memset(&rec.data, 1);
        last = rec;
        // CONTROL! init.gpa.destroy(rec);
    }
    try out.print("done\n", .{});
}
