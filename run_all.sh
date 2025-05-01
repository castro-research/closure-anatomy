#!/bin/bash
set -e

echo "=== Executando JavaScript - Deno runtime ==="
deno javascript/closure.js

echo "=== Executando Ruby ==="
ruby ruby/closure.rb

echo "=== Executando Go ==="
go run go/closure.go
