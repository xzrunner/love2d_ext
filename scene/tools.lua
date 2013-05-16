
function loadImage(filename)
	if not graphics[filename] then
		graphics[filename] = love.graphics.newImage(filename)
	end	
	return graphics[filename]
end