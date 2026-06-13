--Turtle program for my gold factory
--(C) 2026 cloudkumo403
--You can redistribute, remix and modify it freely
--This program has absolutely no warranty

function dropItemByName(n)
 for i = 1, 16 do
  it = turtle.getItemDetail(i)
  if it ~= nil and it.name == n then
   turtle.select(i)
   turtle.dropDown()
  end
 end
end

while true do
 r, rb = turtle.inspectDown()
 if r == true and rb.name == "minecraft:water" then
  --drop soulsands
  print("dropping soulsands")
  dropItemByName("minecraft:soul_sand")
  turtle.forward()
 elseif r == false then
  --collect soulsands
  print("Collecting soulsands")
  turtle.suckDown()
  dropItemByName("minecraft:sand")
  --get sands then drop into cursing line when reached to wall
  print("Collecting sand from machine and dropping")
  while true do
   r2 = turtle.suck()
   dropItemByName("minecraft:sand")
   if r2 == false then
    break
   end
  end
  --return to original pos
  for i = 1, 4 do
   turtle.back()
  end
  sleep(30)
 else
  turtle.forward()
 end
end
