// LEVEL: STD

const std = @import("std");
const bcrypt = std.crypto.pwhash.bcrypt;

pub fn main(init: std.process.Init) !void {
    const io = init.io;
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var buf: [bcrypt.hash_length * 2]u8 = undefined;
    const stored = try bcrypt.strHash("hunter2", .{ .params = .owasp, .encoding = .phc }, &buf, io);
    const opts: bcrypt.VerifyOptions = .{ .silently_truncate_password = false };
    const good = if (bcrypt.strVerify(stored, "hunter2", opts)) |_| true else |_| false;
    const bad = if (bcrypt.strVerify(stored, "wrong", opts)) |_| true else |_| false;
    try out.print("{} {}\n", .{ good, bad });
}
