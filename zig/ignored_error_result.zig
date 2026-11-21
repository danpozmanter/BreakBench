fn save(io: std.Io, path: []const u8) !void {
    const f = try std.Io.Dir.cwd().createFile(io, path, .{});
    defer f.close(io);
    try f.writeStreamingAll(io, "data");
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    save(init.io, "/nonexistent/dir/out.txt"); // BREAK!
    // CONTROL! save(init.io, "/nonexistent/dir/out.txt") catch {};
    try out.print("saved\n", .{});
}
