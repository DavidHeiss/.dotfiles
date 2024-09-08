vim.cmd.colorscheme "oxocarbon"

local groups = {
    "Normal",
    "NormalFloat",
    "NormalNC",
    "SignColumn",
    "StatusLine",
    "StatusLineNC",
    "LineNr",
    "CursorLineNr",
    "VertSplit",
    "Folded",
    "EndOfBuffer",
    "TabLine",
    "TabLineFill",
    "TabLineSel",
    "BufferLineFill",
}

for _, name in ipairs(groups) do
    local hl = vim.api.nvim_get_hl(0, {name = name})
    hl.bg = "none"
    vim.api.nvim_set_hl(0, name, hl)
end
