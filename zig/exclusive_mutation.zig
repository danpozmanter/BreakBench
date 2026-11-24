const std = @import("std");

const Account = struct { balance: i64 };

fn transfer(from: *Account, to: *Account, amount: i64) void {
    // CONTROL! if (from == to) return;
    const new_from = from.balance - amount;
    const new_to = to.balance + amount;
    from.balance = new_from;
    to.balance = new_to;
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var a = Account{ .balance = 100 };
    transfer(&a, &a, 30);
    try out.print("{d}\n", .{a.balance});
}
