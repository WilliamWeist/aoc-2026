# Advent of Code 2026
https://adventofcode.com/2026/about


## Project Structure

```bash
.
├── Cargo.toml
├── inputs              # Daily puzzle input
│   └── day01.txt
│   └── ...
├── new_day.sh
├── README.md
└── src
    ├── bin             # Daily puzzle solution
    │   └── day01.rs
    │   └── ...
    └── lib.rs          # Shared utilities
```

## Execute

```bash
./new_day.sh <day_number>           # Daily boilerplate generator
cargo test --bin day01              # Run test
cargo run --release --bin day01     # Run solution

```

## Style Guide

This project is using [Google Rust Style Guide](https://google.github.io/styleguide/rustguide.html).
