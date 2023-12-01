return {
  "EdmondTabaku/eureka",
  config = function()
    require("eureka").setup({
      default_notes = {
        "<C-q> - Vim Block Mode Alternative",
      },
      close_key = "q"
    })
  end
}