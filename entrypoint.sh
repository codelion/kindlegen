#!/bin/sh -l

ebook-convert "$1" "$(dirname "$1")/$(basename "$1" .epub).mobi"
