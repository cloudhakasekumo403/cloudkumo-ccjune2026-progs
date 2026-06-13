--3x4 tunnel digging program (C) 2026 cloudkumo403
--You can redistribute, modify and remix freely
--This program has absolutely no warranty
--and provided "as is"

function selectItemFromName(n)
 for i = 1, 16 do
  it = turtle.getItemDetail(n)
  turtle.select(i)
  return i
 end
 return 0
end

w = 1
while true do
 --make single width tunnel
 for i = 1, 3 do
  turtle.dig()
  if i ~= 3 then
   turtle.up()
  end
 end
 --if there is no ceiling place it
 c, it = turtle.inspectUp()
 if c == false or (c == true and  it.name == "minecraft:water") then
  r = selectItemFromName("minecraft:polished_andesite")
  if r == 0 then
   selectItemFromName("minecraft:cobblestone")
  end
  turtle.placeDown()
 end
 --return to original pos
 for i = 1, 2 do
  turtle.down()
 end
 --if there is no floor place a stone
 c, it = turtle.inspectDown()
 if c == false or (c == true and it.name == "minecraft:water") then
  selectItemFromName("minecraft:cobblestone")
  turtle.placeUp()
 end
 --deal with gravel or sand
 while true do
  c, it = turtle.inspect()
  if c == true and c ~= "minecraft:water" then
   turtle.dig()
  else
   break
  end
 end
 if w ~= 4 then
  --prepare for next col
  turtle.turnLeft()
  turtle.forward()
  turtle.turnRight()
  w = w + 1
 else
  --go back to original pos, go forward
  turtle.turnLeft()
  for i = 1, 3 do
   turtle.back()
  end
  turtle.turnRight()
  turtle.forward()
  w = 1
 end
end

