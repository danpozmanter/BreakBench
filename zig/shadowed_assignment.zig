const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var status: []const u8 = "pending";
    if (std.mem.eql(u8, args[1], "ok")) {
        const status: []const u8 = "done"; // CONTROL! status = "done";
        std.debug.print("status: {s}\n", .{status});
    }
    try out.print("{s}\n", .{status});
}
