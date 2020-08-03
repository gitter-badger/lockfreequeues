# Package
version       = "2.0.0"
author        = "Elijah Shaw-Rutschman"
description   = "Lock-free queue implementations for Nim."
license       = "MIT"
srcDir        = "src"

# Dependencies
requires "nim >= 1.2.0"

# Tasks
task make_docs, "Generate documentation":
  exec "sh bin/make_docs.sh"

task test, "Runs the test suite (C)":
  exec "nim c -r tests/test.nim"

task testcpp, "Runs the test suite (C++)":
  exec "nim cpp -r tests/test.nim"
