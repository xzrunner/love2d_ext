Scene = class("Scene")

function Scene:initialize()
	self.actors = {}
	self.buttons = {}
end

function Scene:reset()
	for i, v in ipairs(self.actors) do
		v:reset()
	end
	for i, v in ipairs(self.buttons) do
		v:reset()
	end	
end

function Scene:load()
	--
end

function Scene:draw()
	for i, v in ipairs(self.actors) do
		v:draw()
	end
	for i, v in ipairs(self.buttons) do
		v:draw()
	end
end

function Scene:update(dt)
	for i, v in ipairs(self.actors) do
		v:update(dt)
	end
	for i, v in ipairs(self.buttons) do
		v:update(dt)
	end
end

function Scene:mousepressed(x, y, button)
	for i, v in ipairs(self.buttons) do
		v:mousepressed(x, y, button)
	end
end

function Scene:mousereleased(x, y, button)
	for i, v in ipairs(self.buttons) do
		v:mousereleased(x, y, button)
	end
end

function Scene:mousemoved(x, y)

end
