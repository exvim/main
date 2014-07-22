# Changelog

## 0.4.0 (developing)

## New Features

 - Add shader language highlight support
 - Add c,cpp,csharp,javascript,lua,makefile support exCommentLable highlighting
 - Add support for file_ignore_pattern
 - Newer version .exvim file settings will not reset older version settings during upgrade [Issue #59](https://github.com/exvim/main/issues/59)
 - Add store and restore buffers when close and open Vim, this feature needs you turn on enable_restore_bufs in .exvim file 

## Changes

 - Set follow symlinks by default for ctrlp plugin.
 - Use id-lang-autogen.map file all the time. [Issue #60](https://github.com/exvim/main/issues/60)

## Bug Fixes

 - Fix [Issue #55](https://github.com/exvim/main/issues/55): Vim startup errors with latest patches (1-324)
