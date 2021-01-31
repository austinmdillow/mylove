COLORS = {
  red = {1, 0, 0},
  white = {1,1,1}, 
  green = {0,1,0},
  aqua = {.1,1,1},
  blue = {0,0,1},
  periwinkle = {127/255, 0, 255/255}
}


function protectTable(tbl)
    return setmetatable({}, {
        __index = tbl,
        __newindex = function(t, key, value)
            error("attempting to change constant " ..
                   tostring(key) .. " to " .. tostring(value), 2)
        end
    })
end

for idx, color in pairs(COLORS) do
	color = protectTable(color)
end

COLORS = protectTable(COLORS)