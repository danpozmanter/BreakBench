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
        fn run(io: std.Io) i64 {
            io.sleep(.fromMilliseconds(50), .awake) catch {};
            return 7;
        }
    }.run;
    var task = init.io.async(work, .{init.io});
    try out.print("started\n", .{});
    try out.print("{d}\n", .{task.await(init.io)});
}
