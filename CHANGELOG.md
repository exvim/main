# Changelog

## 0.5.0 (developing)

## New Features

 - Add vim-better-whitespace plugin, and use <leader>w to quickly strip extra white-space

## Changes

 - Support erlang in id-utils
 - Different syntax highlight for gulpfile, bower.json, package.json in ex-project
 - Use maparg instead of mapcheck
 - Unset cap of 10,000 files limited in ctrlp, so we find everything
 - Disable ex-minibufexpl by default for the performance problem
 - Disable vim-airline by default for the performance problem
 - Add php into default id-lang-autogen.map

## Bug Fixes

 - Fix [Issue #79](https://github.com/exvim/main/issues/79) undotree close will make cursor jump to minibufexpl
 - Fix [Issue #82](https://github.com/exvim/main/issues/82) `<leader>sg` will delete the edit buffer contents if first time create the exvim proejct without `:Update`
 - Fix [Issue #84](https://github.com/exvim/main/issues/84) exvim did not open correctly #define for tags
 - Fix [Issue #85](https://github.com/exvim/main/issues/85) when set cursorline is used color of the minibuff explorer get messed up
 - Fix [Issue #83](https://github.com/exvim/main/issues/83) ctrlp must follow the folder include/exclude filter
 - Fix .exvim set to nerdtree with folder_filter will raise an error.
 - Fix ex-searchcompl will not unregister `<S-Tab>` command after search stops.

