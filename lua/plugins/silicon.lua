return {
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("silicon").setup({
        font = "M+CodeLat Nerd Font Mono=34;Noto Color Emoji=34",
        theme = "Solarized (dark)",
        tab_width = 2,
        background_image = vim.fn.expand("~/Pictures/bg.jpg"),
        shadow_color = "#000000",
        shadow_blur_radius = 5,
        shadow_offset_x = 3,
        shadow_offset_y = 3,
        to_clipboard = true,
        window_title = function()
          return vim.fn.fnamemodify(
            vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()),
            ":t"
          )
        end
      })
    end
  }
}
