local status,sign = pcall(require,"gitsigns")
if (not status) then return end

sign.setup()