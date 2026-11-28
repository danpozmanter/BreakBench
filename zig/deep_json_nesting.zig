const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    const depth = try std.fmt.parseInt(usize, args[1], 10);
    // CONTROL! if (depth > 1000) { try out.print("refused\n", .{}); return; }
    const text = try init.gpa.alloc(u8, 2 * depth);
    defer init.gpa.free(text);
    @memset(text[0..depth], '[');
    @memset(text[depth..], ']');
    const parsed = std.json.parseFromSlice(std.json.Value, init.gpa, text, .{}) catch {
        try out.print("refused\n", .{});
        return;
    };
    defer parsed.deinit();
    try out.print("parsed\n", .{});
}
