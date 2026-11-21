// LEVEL: LANGUAGE

const std = @import("std");

pub const panic = std.debug.FullPanic(onPanic);

fn onPanic(msg: []const u8, first_trace_addr: ?usize) noreturn {
    _ = msg;
    _ = first_trace_addr;
    _ = std.os.linux.write(1, "hook ran\n", 9);
    std.process.exit(1);
}

pub fn main() void {
    @panic("boom");
}
