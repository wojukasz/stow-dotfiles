return {
  -- Neovim plugin for intracting with GPT models from OpenAI
  -- https://github.com/Bryley/neoai.nvim
  -- To use this plugin make sure you have an OpenAI API key which can be created here. Save this key in your environment variables as OPENAI_API_KEY.
  -- :NeoAIContext
  "Bryley/neoai.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  cmd = {
    "NeoAI",
    "NeoAIOpen",
    "NeoAIClose",
    "NeoAIToggle",
    "NeoAIContext",
    "NeoAIContextOpen",
    "NeoAIContextClose",
    "NeoAIInject",
    "NeoAIInjectCode",
    "NeoAIInjectContext",
    "NeoAIInjectContextCode",
  },
  keys = {
    { "<leader>as", desc = "Summarize Text" },
    { "<leader>ag", desc = "Generate Git Message" },
  },
  config = function()
    require("neoai").setup({
      -- Options go here
    })
  end,
}
