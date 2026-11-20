#!/usr/bin/env bash
set -e

if [ -z "$1" ]; then
  echo "Usage: ./new_day.sh <day_number>"
  exit 1
fi

# Zero-pad the day number (e.g., 1 -> 01)
DAY=$(printf "%02d" "$1")
BIN_FILE="src/bin/day${DAY}.rs"
INPUT_FILE="inputs/day${DAY}.txt"

if [ -f "$BIN_FILE" ]; then
  echo "Error: $BIN_FILE already exists."
  exit 1
fi

mkdir -p src/bin inputs
touch "$INPUT_FILE"

cat <<EOF >"$BIN_FILE"
const INPUT: &str = include_str!("../../inputs/day${DAY}.txt");

fn parse(input: &str) -> Vec<&str> {
    input.trim().lines().collect()
}

fn part1(input: &str) -> usize {
    let parsed = parse(input);
    // TODO: Solve part 1
    parsed.len()
}

fn part2(input: &str) -> usize {
    let parsed = parse(input);
    // TODO: Solve part 2
    parsed.len()
}

fn main() {
    use std::time::Instant;

    let start = Instant::now();
    println!("Part 1: {} ({:?})", part1(INPUT), start.elapsed());

    let start = Instant::now();
    println!("Part 2: {} ({:?})", part2(INPUT), start.elapsed());
}

#[cfg(test)]
mod tests {
    use super::*;

    const P1_1: &str = "";

    #[test]
    fn test_part1() {
        assert_eq!(part1(P1_1), 0);
    }

    const P2_1: &str = "";

    #[test]
    fn test_part2() {
        assert_eq!(part2(P2_1), 0);
    }
}
EOF

echo "Scaffolded Day ${DAY}:"
echo "  - $BIN_FILE"
echo "  - $INPUT_FILE"
