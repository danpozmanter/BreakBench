// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var counts: std.StringHashMapUnmanaged(i64) = .empty;
    defer counts.deinit(init.gpa);
    for ([_][]const u8{ "a", "b", "a" }) |w| {
        const e = try counts.getOrPutValue(init.gpa, w, 0);
        e.value_ptr.* += 1;
    }
    try out.print("a={d} b={d}\n", .{ counts.get("a").?, counts.get("b").? });
}
