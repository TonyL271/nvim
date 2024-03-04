require('rose-pine').setup({
    -- disable_background = true
})

function ColorMyPencils(color) 
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end


-- function ColorMyPencils(color) 
--     vim.opt.background = "dark" -- set this to dark or light
--     vim.cmd("colorscheme oxocarbon")
--  end




-- require('lucid').setup({
--     disable_background = true
-- })
-- 
-- function ColorMyPencils(color) 
-- 	color = color or "lucid"
-- 	vim.cmd.colorscheme(color)
-- 
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- 
-- end

ColorMyPencils()
