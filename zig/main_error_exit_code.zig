const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const text = std.Io.Dir.cwd().readFileAlloc(init.io, "/nonexistent/bb.conf", init.gpa, .unlimited) catch |err| {
        std.debug.print("config missing: {s}\n", .{@errorName(err)});
        return; // BREAK!
        // CONTROL! return err;
    };
    defer init.gpa.free(text);
    std.debug.print("{d}\n", .{text.len});
}
