return {
  settings = {
    ["rust-analyzer"] = {
      -- Enable highlighting for mutable variables
      highlight = {
        enable = true,
        additionalKeywords = {
          mutable = {
            -- Set the style for mutable variables
            style = "italic",
          },
        },
      },
    },
  },
}
