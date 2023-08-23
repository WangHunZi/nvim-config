local opt = vim.o			-- 定义opt变量
local cmd = vim.cmd

vim.g.encoding = "utf-8"	-- 设置文件编码格式为 utf-8
opt.termencoding = "utf-8"	-- 设置终端编码格式为 utf-8
opt.fileencodings = "utf-8,ucs-bom,gb18030,gbk,gb2312,cp936" -- 设置文件编码
opt.termencoding = "utf-8" -- 设置终端编码

opt.number = true			-- 行号
opt.relativenumber = true	-- 相对行号
opt.wrap = true				-- 自动换行
opt.ruler = true			-- 右下方显示输入命令
opt.incsearch = true		-- 搜索高亮

-- 设置TAB缩进为4
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- Set delete the any chatacter while in the insert mode
opt.backspace = "indent,eol,start"

-- blink the cursor
cmd([[set guicursor+=a:blinkon100]])


require("plugins-config/packer")
require("plugins-config/theme_vscode")
-- require("plugins-config/nvim-tree")
require("plugins-config/nvim-treesitter")
-- require("plugins-config/nvim-lsp-installer")
