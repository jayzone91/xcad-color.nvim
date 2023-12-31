--- XCad for markid
--- https://github.com/David-Kunz/markid
---
--- @usage
--- local highlights = require('xcad-colors.plugins.markid')
--- require("nvim-treesitter.configs").setup({ markid = { enable = true, colors = highlights } })

local p = require("xcad-color.palette")
return { p.foam, p.rose, p.iris }
