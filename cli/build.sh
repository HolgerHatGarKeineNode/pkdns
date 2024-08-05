#!/bin/bash

echo pkdns-cli $VERSION
echo Build OSX amd64
cargo build --release --package=pkdns-cli
cp target/release/pkdns-cli target/github-release/$OSX64_DIR_NAME
echo

echo Build Linux amd64
cargo build --release --package=pkdns-cli --target=x86_64-unknown-linux-gnu
cp target/x86_64-unknown-linux-gnu/release/pkdns-cli target/github-release/$LINUX64_DIR_NAME
echo

echo Build Windows amd64
cargo build --release --package=pkdns-cli --target=x86_64-pc-windows-gnu
cp target/x86_64-pc-windows-gnu/release/pkdns-cli.exe target/github-release/$WINDOWS64_DIR_NAME


