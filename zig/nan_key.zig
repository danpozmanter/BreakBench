const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const a = try std.fmt.parseFloat(f64, "nan");
    const b = try std.fmt.parseFloat(f64, "nan");
    var floats: std.AutoHashMapUnmanaged(f64, void) = .empty; try floats.put(init.gpa, a, {}); // BREAK!
    var bits: std.AutoHashMapUnmanaged(u64, void) = .empty;
    defer bits.deinit(init.gpa);
    try bits.put(init.gpa, @bitCast(a), {});
    try out.print("{s}\n", .{if (bits.contains(@bitCast(b))) "found" else "missing"});
}
