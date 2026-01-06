return
{
  {
    "blazkowolf/gruber-darker.nvim",
    -- config = function()
      --   -- vim.cmd("colorscheme gruber-darker")
      -- end
    },
    {
      "vague-theme/vague.nvim",
      priority = 1000, -- make sure to load this before all the other plugins
      lazy = false, -- make sure we load this during startup if it is your main colorscheme
      config = function()
        require("vague").setup({
          transparent = true,
        })
        vim.cmd("colorscheme vague")
      end
    },
  }
