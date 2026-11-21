const Round = struct {
    mutex: std.Io.Mutex = .init,
    ready: std.Io.Condition = .init,
    first: ?[]i64 = null,
    holders: u8 = 3,

    fn release(r: *Round, io: std.Io) void {
        r.holders -= 1;
        const last = r.holders == 0;
        r.mutex.unlock(io);
        if (last) {
            if (r.first) |buf| std.heap.page_allocator.free(buf);
            std.heap.page_allocator.destroy(r);
        }
    }
};

fn answer(io: std.Io, r: *Round, seed: i64) void {
    const buf = std.heap.page_allocator.alloc(i64, 8192) catch return;
    @memset(buf, seed);
    r.mutex.lockUncancelable(io);
    if (r.first == null) {
        r.first = buf;
        r.ready.signal(io);
    } else {
        std.heap.page_allocator.free(buf);
    }
    r.release(io);
}

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    const rounds = try std.fmt.parseInt(i64, args[1], 10);
    var i: i64 = 0;
    while (i < rounds) : (i += 1) {
        const r = try std.heap.page_allocator.create(Round);
        r.* = .{};
        for (0..2) |w| {
            const t = try std.Thread.spawn(.{}, answer, .{ init.io, r, i + @as(i64, @intCast(w)) });
            t.detach();
        }
        r.mutex.lockUncancelable(init.io);
        while (r.first == null) r.ready.waitUncancelable(init.io, &r.mutex);
        r.release(init.io);
    }
    try out.print("done\n", .{});
}
