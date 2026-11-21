const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const a = (try std.fmt.parseInt(i64, args[1], 10)) != 0;
    const b = true;
    var r: []const u8 = "unset";
    if (a) // BREAK!
        if (b) r = "both" // BREAK!
    else // BREAK!
        r = "not a"; // BREAK!
    // CONTROL! if (a) { if (b) r = "both"; } else { r = "not a"; }
    try out.print("{s}\n", .{r});
}
