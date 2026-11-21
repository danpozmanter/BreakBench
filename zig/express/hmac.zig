// LEVEL: STD

const std = @import("std");
const Hmac = std.crypto.auth.hmac.sha2.HmacSha256;

pub fn main(init: std.process.Init) !void {
    var out_buf: [128]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var tag: [Hmac.mac_length]u8 = undefined;
    Hmac.create(&tag, "The quick brown fox jumps over the lazy dog", "key");
    try out.print("{x}\n", .{&tag});
}
