// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var d: std.Deque(i64) = .empty;
    defer d.deinit(init.gpa);
    try d.pushBack(init.gpa, 1);
    try d.pushFront(init.gpa, 0);
    try d.pushBack(init.gpa, 2);
    try out.print("{d} {d}\n", .{ d.popFront().?, d.popBack().? });
}
