const Account = struct { balance: i64 };

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var accounts = [_]Account{.{ .balance = 100 }};
    for (accounts) |acct| acct.balance += 50; // BREAK!
    // CONTROL! for (&accounts) |*acct| acct.balance += 50;
    try out.print("{d}\n", .{accounts[0].balance});
}
