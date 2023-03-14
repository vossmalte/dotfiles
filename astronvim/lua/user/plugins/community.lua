return {

  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.scrolling.mini-animate" },
  {
    import = "astrocommunity.comment.mini-comment",
    opts = {
      hooks = {
        pre = function() require("ts_context_commentstring.internal").update_commentstring() end,
      },
    },
  },
}
