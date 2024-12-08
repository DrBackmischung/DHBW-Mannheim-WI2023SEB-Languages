const std = @import("std");

fn add(a: i32, b: i32) i32 {
    return a + b;
}

pub fn main() void {
    std.debug.print("Sum: {}\n", .{add(5, 7)});
}
