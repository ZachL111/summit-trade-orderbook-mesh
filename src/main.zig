const std = @import("std");

const Signal = struct {
    demand: i32,
    capacity: i32,
    latency: i32,
    risk: i32,
    weight: i32,
};

const threshold: i32 = 181;
const risk_penalty: i32 = 5;
const latency_penalty: i32 = 3;
const weight_bonus: i32 = 5;

fn score(signal: Signal) i32 {
    return signal.demand * 2 + signal.capacity + signal.weight * weight_bonus
        - signal.latency * latency_penalty - signal.risk * risk_penalty;
}

fn classify(signal: Signal) []const u8 {
    return if (score(signal) >= threshold) "accept" else "review";
}

test "fixture decisions" {
    const signal_case_1 = Signal{ .demand = 82, .capacity = 73, .latency = 16, .risk = 18, .weight = 4 };
    try std.testing.expectEqual(@as(i32, 119), score(signal_case_1));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_1), "review"));
    const signal_case_2 = Signal{ .demand = 62, .capacity = 105, .latency = 18, .risk = 7, .weight = 13 };
    try std.testing.expectEqual(@as(i32, 205), score(signal_case_2));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_2), "accept"));
    const signal_case_3 = Signal{ .demand = 69, .capacity = 75, .latency = 27, .risk = 14, .weight = 11 };
    try std.testing.expectEqual(@as(i32, 117), score(signal_case_3));
    try std.testing.expect(std.mem.eql(u8, classify(signal_case_3), "review"));
}
