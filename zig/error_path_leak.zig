fn process(gpa: std.mem.Allocator, request: []const u8, id: usize) !void {
    const buf = try gpa.alloc(u8, 4096);
    defer gpa.free(buf);
    const text = try std.fmt.bufPrint(buf, "{s}#{d}", .{ request, id });
    if (text[0] != '{') return error.InvalidRequest;
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const n = try std.fmt.parseInt(usize, args[1], 10);
    var failures: usize = 0;
    for (0..n) |i| {
        process(init.gpa, "not json", i) catch {
            failures += 1;
        };
    }
    try out.print("{s}\n", .{if (failures == n) "done" else "unexpected"});
}
