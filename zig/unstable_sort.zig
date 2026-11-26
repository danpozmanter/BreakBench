const std = @import("std");

const Order = struct { customer: i64, day: i64 };

fn byCustomer(_: void, a: Order, b: Order) bool {
    return a.customer < b.customer;
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var orders: [200]Order = undefined;
    for (&orders, 0..) |*o, i| {
        const day: i64 = @intCast(i);
        o.* = .{ .customer = @mod(day * 7, 5), .day = day };
    }
    std.mem.sort(Order, &orders, {}, byCustomer);
    var kept = true;
    for (orders[1..], orders[0 .. orders.len - 1]) |b, a| {
        if (a.customer == b.customer and b.day < a.day) kept = false;
    }
    try out.print("{s}\n", .{if (kept) "kept" else "scrambled"});
}
