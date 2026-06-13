--Digger for miners (2x7)
--(C) 2026 cloudkumo403
--You can redestirbute, modify and remix freely
--This program has absolutely no warranty

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
