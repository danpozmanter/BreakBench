const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const name = "a👍b";
    const n = try std.fmt.parseInt(usize, args[1], 10);
    try out.print("{s}\n", .{name[0..n]}); // CONTROL! const view = try std.unicode.Utf8View.init(name); var it = view.iterator(); var k: usize = 0; while (k < n) : (k += 1) _ = it.nextCodepointSlice(); try out.print("{s}\n", .{name[0..it.i]});
}
