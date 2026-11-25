const std = @import("std");

const lock = "/tmp/bb_scratch/run.lock";

fn checkArgs(io: std.Io, args: []const []const u8) bool {
    for (args) |arg| {
        if (std.mem.eql(u8, arg, "--version")) {
            std.Io.File.stdout().writeStreamingAll(io, "1.0\n") catch {};
            std.process.exit(0); // BREAK!
            // CONTROL! return true;
        }
    }
    return false;
}

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    const cwd = std.Io.Dir.cwd();
    const file = try cwd.createFile(init.io, lock, .{});
    file.close(init.io);
    defer cwd.deleteFile(init.io, lock) catch {};
    if (checkArgs(init.io, args)) return;
    std.Io.File.stdout().writeStreamingAll(init.io, "working\n") catch {};
}
