const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const qty: ?i64 = std.fmt.parseInt(i64, args[1], 10) catch null;
    var present = false;
    if (qty) present = true; // BREAK!
    // CONTROL! if (qty != null) present = true;
    if (present) {
        try out.print("have {d}\n", .{qty.?});
    } else {
        try out.print("missing\n", .{});
    }
}
