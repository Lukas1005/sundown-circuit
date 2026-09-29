#!/bin/sh
# Wrap the raw game file (kept host-neutral for claude.ai) into a standalone page for GitHub Pages.
wrap() {
  printf '%s' '<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><meta name="theme-color" content="#150a12"><style>html,body{height:100%;margin:0}[hidden]{display:none!important}</style></head><body>' > "$2"
  cat "$1" >> "$2"
  printf '%s' '</body></html>' >> "$2"
}
mkdir -p docs/rich
wrap index.html docs/index.html
wrap rich/index.html docs/rich/index.html
