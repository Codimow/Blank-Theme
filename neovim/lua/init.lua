   local M = {}

   -- Default config
   M.config = {
     style = "Moonlight", -- "Moonlight", "Ghibli", or "Monochrome"
     transparent = false  -- Allow for future transparent background option
   }

   -- Setup function to be called by users
   M.setup = function(opts)
     opts = opts or {}
     M.config = vim.tbl_deep_extend("force", M.config, opts)
     
     local style = "Blank-" .. M.config.style
     vim.cmd("colorscheme " .. style)
   end

   return M