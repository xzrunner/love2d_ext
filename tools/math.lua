
function math.isPointInArea(x, y, area)
	local count = 0
	local n = #area * 0.5
	local j = n
	for i=1, n, 1 do
		local ix = area[i*2-1]
		local iy = area[i*2]
		local jx = area[j*2-1]
		local jy = area[j*2]
		if ((iy < y and jy >= y) or (jy < y and iy >= y)) and (ix <= x or jx <= x) then
			local intersect = ((ix + (y - iy) / (jy - iy) * (jx - ix)) < x)
			if intersect then
				count = count + 1
			end
		end
		j = i
	end
	return count % 2 == 1
end