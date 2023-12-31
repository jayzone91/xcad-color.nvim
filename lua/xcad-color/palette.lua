local options = require("xcad-color.config").options

local variants = {
  main = {
    ---@deprecated for backwards compatibility
    _experimental_nc = "#16141f",
    nc = "#1A1A1A",
    base = "#1A1A1A",
    surface = "#1A1A1A",
    overlay = "#121212",
    muted = "#666666",
    subtle = "#666666",
    text = "#F1F1F1",
    love = "#BA5AFF",
    gold = "#685AFF",
    rose = "#28B9FF",
    pine = "#7129FF",
    foam = "#2B4FFF",
    iris = "#5EA2FF",
    highlight_low = "#BA5AFF",
    highlight_med = "#905AFF",
    highlight_high = "#7129FF",
    none = "NONE",
  },
}

if variants[options.variant] ~= nil then
  return variants[options.variant]
end

return vim.o.background == "light" and variants.dawn
  or variants[options.dark_variant or "main"]
