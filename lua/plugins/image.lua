return {
  {
    "3rd/image.nvim",
    dependencies = { "luarocks.nvim" },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("image").setup({
        backend = "ueberzug",
        integrations = {
          markdown = {
            enabled = true,
            clear_in_insert_mode = true,
            download_remote_images = true,
            only_render_image_at_cursor = true,
            -- markdown extensions (ie. quarto) can go here
            filetypes = { "markdown", "vimwiki", "quarto" },
          },
          neorg = {
            enabled = true,
            clear_in_insert_mode = true,
            download_remote_images = true,
            only_render_image_at_cursor = true,
            filetypes = { "neorg" },
          },
          html = {
            enabled = true,
            clear_in_insert_mode = true,
            download_remote_images = true,
            only_render_image_at_cursor = true,
            filetypes = { "html", "xhtml", "htm" },
          },
          css = {
            enabled = true,
            clear_in_insert_mode = true,
            download_remote_images = true,
            only_render_image_at_cursor = true,
            filetypes = { "css", "sass", "scss" },
          },
        },
        max_width = nil,
        max_height = nil,
        max_width_window_percentage = nil,
        max_height_window_percentage = 50,
        -- toggles images when windows are overlapped
        window_overlap_clear_enabled = false,
        window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
        -- auto show/hide images when the editor gains/looses focus
        editor_only_render_when_focused = false,
        -- auto show/hide images in the correct Tmux window (needs visual-activity off)
        tmux_show_only_in_active_window = false,
        -- render image files as images when opened
        hijack_file_patterns = {
          "*.png",
          "*.jpg",
          "*.jpeg",
          "*.gif",
          "*.webp",
        },
      })
    end
  }
}
