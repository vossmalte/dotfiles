---@type LazySpec
return {
  "vim-test/vim-test",
  cmd = { "TestNearest", "TestFile", "TestLast", "TestClass", "TestSuite", "TestVisit" },
  dependencies = {
    {
      "AstroNvim/astrocore",
      ---@param opts AstroCoreOpts
      opts = function(_, opts)
        local maps = assert(opts.mappings)

        local prefix = "<Leader>T"
        maps.n[prefix] = { desc = require("astroui").get_icon("VimTest", 1, true) .. "Testing" }

        maps.n[prefix .. "n"] = { ":TestNearest<CR>", desc = "Test Nearest" }
        maps.n[prefix .. "f"] = { ":TestFile<CR>", desc = "Test File" }
        maps.n[prefix .. "l"] = { ":TestLast<CR>", desc = "Test Last" }
        maps.n[prefix .. "c"] = { ":TestClass<CR>", desc = "Test Class" }
        maps.n[prefix .. "s"] = { ":TestSuite<CR>", desc = "Test Suite" }
        maps.n[prefix .. "v"] = { ":TestVisit<CR>", desc = "Test Visit" }

        if not opts.options then opts.options = {} end
        if not opts.options.g then opts.options.g = {} end
        -- forward output to kitty window
        opts.options.g["test#strategy"] = "kitty"
      end,
    },
    { "AstroNvim/astroui", opts = { icons = { VimTest = "󰙨" } } },
  },
  event = { "VeryLazy" },
}
