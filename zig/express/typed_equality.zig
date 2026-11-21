// LEVEL: LANGUAGE

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var id: i64 = 42;
    _ = &id;
    if (id == 42) try out.print("match\n", .{});
    if (id == "42") try out.print("text\n", .{}); // REJECT!
}
