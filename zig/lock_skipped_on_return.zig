const std = @import("std");

const Account = struct {
    mutex: std.Io.Mutex = .init,
    balance: i64 = 100,

    fn withdraw(self: *Account, io: std.Io, amount: i64) void {
        self.mutex.lockUncancelable(io);
        if (amount > self.balance) {
            return; // CONTROL! self.mutex.unlock(io); return;
        }
        self.balance -= amount;
        self.mutex.unlock(io);
    }
};

fn worker(io: std.Io, account: *Account) void {
    account.withdraw(io, 30);
}

pub fn main(init: std.process.Init) !void {
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var account: Account = .{};
    account.withdraw(init.io, 500);
    const t = try std.Thread.spawn(.{}, worker, .{ init.io, &account });
    t.join();
    try out.print("{d}\n", .{account.balance});
}
