#!/bin/bash

dest="build/aseprite-xcolor"

cargo build --manifest-path=xcolor/Cargo.toml --release
mkdir -p $dest
cp xcolor/target/release/xcolor $dest
cp aseprite-xcolor.lua $dest
