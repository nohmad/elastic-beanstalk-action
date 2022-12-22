#!/usr/bin/env bash
git config --global --add safe.directory /github/workspace
eb $1 $2 $3
