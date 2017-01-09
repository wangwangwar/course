#!/bin/sh

doctest -isrc -Wall -fno-warn-type-defaults "src/Course/$@.hs"
