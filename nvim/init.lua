local modules = {
    "options",
    "keymaps",

    "plugins",
    "plugins.autoclose",
    "plugins.tokyonight",
    "plugins.minifiles",
    "plugins.miniclue",
}

for _, module in ipairs(modules) do
    local ok, err = pcall(require, module)
    if not ok then
        print("Error loading " .. module .. " module\n\n" .. err)
    end
end

