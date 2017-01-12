#!/bin/sh

stack exec doctest -- -isrc -Wall -fno-warn-type-defaults "src/Course/$@.hs"
