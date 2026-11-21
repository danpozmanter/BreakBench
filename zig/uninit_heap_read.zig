const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const gpa = init.gpa;
    const session = try gpa.alloc(u8, 64);
    @memcpy(session[32..44], "SECRET-TOKEN");
    gpa.free(session);
    const reply = try gpa.alloc(u8, 64);
    defer gpa.free(reply);
    for (reply[32..44]) |b| try out.print("{x:0>2}", .{b});
    try out.print("\n", .{});
}
