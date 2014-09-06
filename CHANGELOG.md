# Changelog

## 0.5.0 (developing)

## New Features

## Changes

 - Restore last opened buffers will not open files not exist. 

## Bug Fixes

 - Fix [Issue #69](https://github.com/exvim/main/issues/69): When enable_restore_bufs changes and saves in .exvim file, it will not affect immediately.
 - Fix restore buffer will not restore minibufexpl
 - Fix [Issue #72](https://github.com/exvim/main/issues/72): Taglist puts letters in current buffer in console vim on `<Up>`, `<Down>`.
 - Fix [Issue #73](https://github.com/exvim/main/issues/73): Error detect when use <c-k>, <c-l> while no buffer listed.
