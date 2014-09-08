# Changelog

## 0.5.0 (developing)

## New Features

## Changes

 - Restore last opened buffers will not open files not exist. 
 - Remove root_only option from .exvim file.
 - Update .exvim file to version 10.
 - Resolve [Issue #74](https://github.com/exvim/main/issues/74): Use `--files0-from=FILE` for idutils.

## Bug Fixes

 - Fix [Issue #69](https://github.com/exvim/main/issues/69): When enable_restore_bufs changes and saves in .exvim file, it will not affect immediately.
 - Fix restored buffers didn't show name in minibufexpl
 - Fix [Issue #72](https://github.com/exvim/main/issues/72): Taglist puts letters in current buffer in console vim on `<Up>`, `<Down>`.
 - Fix [Issue #73](https://github.com/exvim/main/issues/73): Error detect when use `<c-k>`, `<c-l>` while no buffer listed.
 - Fix install problem since Vundle change its github address
