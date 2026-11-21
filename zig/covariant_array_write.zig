const Dog = struct {
    fn sound(_: Dog) []const u8 {
        return "woof";
    }
};
const Cat = struct {
    fn sound(_: Cat) []const u8 {
        return "meow";
    }
};

const Animal = union(enum) { dog: Dog, cat: Cat };

const std = @import("std");

pub fn main(init: std.process.Init) !void {
    const args = try init.minimal.args.toSlice(init.arena.allocator());
    var out_buf: [256]u8 = undefined;
    var stdout = std.Io.File.stdout().writerStreaming(init.io, &out_buf);
    const out = &stdout.interface;
    defer out.flush() catch {};
    _ = &args;
    var dogs = [_]Dog{.{}};
    var animals: []Animal = &dogs; // BREAK!
    animals[0] = .{ .cat = .{} }; // BREAK!
    try out.print("{s}\n", .{dogs[0].sound()});
}
