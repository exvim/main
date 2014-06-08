# Changelog

## 0.3.0 (developing)

## New Features

 - Integrate ex-hierarchy plugin for generate hierarchy map of classes.
 - Integrate ex-qfix plugin for easy manipulate quickfix list in plugin window. 
 - Add `folder_filter_root_only` filter option in .exvim file. 
 - Add `GSW` method in ex-gsearch. This method will allow user global search
   single word instead of text.
 - Add `<leader><esc>` which can directly close last opened plugin window no
   matter where your cursor live.

## Changes

 - Replace `g:exvim_dev` and `g:exvim_dev_path` with g:exvim_custom_path. This allow user specific the exvim directory for install. 

## Bug Fixes

 - Fix [Issue #44](https://github.com/exvim/main/issues/44): Error message is thrown when `:Update` and excluded folder is missing
 - Fix [Issue #48](https://github.com/exvim/main/issues/48): Terminal Vim `<esc>`, `<F4>` key mappings lead to several problem.
 - Fix [Issue #51](https://github.com/exvim/main/issues/51): Ubuntu Terminal solarized not working correctly.
 - Fix ex-project tree line `|` be italic for some fonts.
