// LEVEL: STD

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const work = struct {
        fn run(io: std.Io) error{Canceled}!void {
            while (true) try io.sleep(.fromMilliseconds(1), .awake);
        }
    }.run;
    var task = init.io.async(work, .{init.io});
    try init.io.sleep(.fromMilliseconds(20), .awake);
    task.cancel(init.io) catch {};
    try out.print("stopped\n", .{});
}
