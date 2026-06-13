j = 1
while true do
	for i = 1, 7 do
		turtle.dig()
		if j == 1 then turtle.up() else turtle.down() end
	end
	if j == 1 then
		turtle.turnRight()
		turtle.forward()
		turtle.turnLeft()
		j = 2
	elseif j == 2 then
		turtle.turnLeft()
		turtle.forward()
		turtle.turnRight()
		turtle.forward()
		j = 1
	end
end
