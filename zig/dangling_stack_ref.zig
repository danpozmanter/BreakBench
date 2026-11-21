fn make() *i64 {
    var local: i64 = 4242;
    return &local; // BREAK!
    // CONTROL! local += 0; const kept = std.heap.page_allocator.create(i64) catch unreachable; kept.* = local; return kept;
}

fn clobber() i64 {
    var junk: [64]i64 = undefined;
    for (&junk) |*j| j.* = 7;
    std.mem.doNotOptimizeAway(&junk);
    return junk[63];
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const r = make();
    _ = clobber();
    try out.print("{d}\n", .{r.*});
}
