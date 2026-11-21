// LEVEL: STD

const std = @import("std");
const Aes = std.crypto.aead.aes_gcm.Aes256Gcm;

pub fn main(init: std.process.Init) !void {
    const io = init.io;
    var out_buf: [64]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    var key: [Aes.key_length]u8 = undefined;
    var nonce: [Aes.nonce_length]u8 = undefined;
    io.random(&key);
    io.random(&nonce);
    const message = "secret";
    var cipher: [message.len]u8 = undefined;
    var tag: [Aes.tag_length]u8 = undefined;
    Aes.encrypt(&cipher, &tag, message, "", nonce, key);
    var plain: [message.len]u8 = undefined;
    try Aes.decrypt(&plain, &cipher, tag, "", nonce, key);
    try out.print("{s}\n", .{plain});
    cipher[0] ^= 1;
    if (Aes.decrypt(&plain, &cipher, tag, "", nonce, key)) |_| {
        try out.print("accepted\n", .{});
    } else |_| {
        try out.print("rejected\n", .{});
    }
}
