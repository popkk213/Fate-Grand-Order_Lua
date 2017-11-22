dir = scriptPath()
setImagePath(dir .. "image_JP")
Refill_or_Not = 0
Use_Stone = 0
How_Many = 5

MenuRegion = Region(2300,1200,1156,1000)


setImmersiveMode(true)			   
Settings:setCompareDimension(true,1480)
Settings:setScriptDimension(true,2960)

function menu()
    atkround = 1
    click(Location(2197,400))
    wait(1.5)
    if Refill_or_Not == 1 and stoneused < How_Many then
        refillstamina()
    end
    click(Location(2197,500))
    wait(1.5)
    click(Location(2775,1350))
	wait(8)
end

function refillstamina()
    if StaminaRegion:exists("stamina.png", 0) then
        if Use_Stone == 1 then
            click(StoneClick)
            click(Location(1907,1120))
            stoneused = stoneused + 1
        else
            click(AppleClick)
            click(Location(1907,1120))
            stoneused = stoneused + 1
        end
    end
    wait(1.5)
end

	if exists("Mona.png", 0) then
	   toast("find Mona")
	   click(getLastMatch())
	else
	   click(Location(2684,659))
	   if exists("Mona.png", 0) then
	      toast("find Mona")
	      click(getLastMatch())

	   	else
	       click(Location(2684,869))
	       if exists("Mona.png", 0) then
	          toast("find Mona")
	          click(getLastMatch())
	       else
	          click(Location(2684,1079))
	          if exists("Mona.png", 0) then
	             toast("find Mona")
	             click(getLastMatch())
	          else
	             click(Location(2684,379))
	             wait(1)
	             click(Location(1199,1001))
	   	      end
	   	   end
	   end
	end