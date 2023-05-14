-- Add options for notify to avoid transparent background errors

return {
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
      stages = "fade",
      icons = {
        DEBUG = "🟨",
        ERROR = "🔴",
        INFO = "🔵",
        TRACE = "🟣",
        WARN = "🟠",
      },
    },
  },
}
