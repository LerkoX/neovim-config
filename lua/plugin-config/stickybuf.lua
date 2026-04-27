require("stickybuf").setup({
  get_auto_pin = function(bufnr)
    local filetype = vim.bo[bufnr].filetype
    if filetype == "undotree" then
      return "bufnr"
    end
    return require("stickybuf").should_auto_pin(bufnr)
  end,
})