--[[
このスクリプトは人の動きを真似してるだけなので、サーバーには余計な負担を掛からないはず。
私の国では仕事時間は異常に長いので、もう満足プレイする時間すらできない。休日を使ってシナリオを読むことがもう精一杯…
お願いします。このプログラムを禁止しないでください。
]]
MenuRegion = Region(2300,1200,1156,1000)
BattleRegion = Region(2400,200,1000,600)
ResultRegion = Region(300,300,700,200)
StaminaRegion = Region(800,200,300,300)
StoneClick = (Location(1470,340))
AppleClick = (Location(1470,640))
Card1Region = Region(530,650,200,200)
Card2Region = Region(1040,650,200,200)
Card3Region = Region(1540,650,200,200)
Card4Region = Region(2050,650,200,200)
Card5Region = Region(2570,650,200,200)
Card1Click = (Location(500,1000))
Card2Click = (Location(950,1000))
Card3Click = (Location(1500,1000))
Card4Click = (Location(2000,1000))
Card5Click = (Location(2550,1000))
Target1Type = Region(200,0,485,220)
Target2Type = Region(685,0,482,220)
Target3Type = Region(1167,0,476,220)
Target1Choose = (Location(290,80))
Target2Choose = (Location(770,80))
Target3Choose = (Location(1250,80))
QuestrewardRegion = Region(1830,140,370,250)
--NpbarRegion = Region(480,1330,1620,50)
--Ultcard1Region = Region(1100,100,200,200)
--Ultcard2Region = Region(1550,100,200,200)
--Ultcard3Region = Region(2000,100,200,200)


Skill101 = Location(343, 1153)
Skill102 = Location(520, 1153)
Skill103 = Location(677, 1153)
Skill201 = Location(977, 1153)
Skill202 = Location(1141, 1153)
Skill203 = Location(1346, 1153)
Skill301 = Location(1616, 1153)
Skill302 = Location(1813, 1153)
Skill303 = Location(1990, 1153)

Ultcard1Click = (Location(1200,220))
Ultcard2Click = (Location(1500,400))
Ultcard3Click = (Location(1940,400))

setImmersiveMode(true)			   
Settings:setCompareDimension(true,1480)
Settings:setScriptDimension(true,2960)
atkround = 1
stoneused = 0
refillshown = 0
--[[
recognize speed realated functions:
1.setScanInterval(1)
2.Settings:set("MinSimilarity", 0.5)
3.Settings:set("AutoWaitTimeout", 1)
4.usePreviousSnap(true)
5.resolution 1280
6.exists(var ,0)]]

function menu()
    atkround = 1
    click(Location(2100,400))
    wait(1.5)
	
    if Refill_or_Not == 1 and stoneused < How_Many then
        refillstamina()
	else
		if StaminaRegion:exists("stamina.png", 0) then
		   scriptExit("Refill times run out...")
		end
    end
	
	findMona()
 	
    wait(1.5)
	if Region(2400,1300,400,200):exists("Quest.png", 10) then
	   toast("Quest start.")
	   click(Location(2550,1350))
	   wait(8)
	else
	   toast("Can not find quest start icon.")
	end
	
end

function findMona()
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

end

function refillstamina()
    if StaminaRegion:exists("stamina.png", 0) then
        if Use_Stone == 1 then
            click(StoneClick)
            click(Location(1850,1120))
            stoneused = stoneused + 1
        else
            click(AppleClick)
            click(Location(1850,1120))
            stoneused = stoneused + 1
        end
    end
    wait(1.5)
end

function battle()
	--if targetchoosen ~= 1 then
	--	targetchoose()
	--end

    wait(0.5)

    
    --if targetchoosen == 1 then
    --    ultcard()
   -- end

    --norcard()
	i = 0
	
	--[[---------Basic Skill Cast-------------]]
	if atkround==1 then
	wait(3)
	click(Skill103)
	wait(3)
	click(Skill201)
	wait(3)
	click(Skill302)
	wait(3)
	click(Skill303)
	wait(3)
	elseif atkround==2 then
	wait(3)
    click(Skill202)
	wait(3)
	click(Skill203)
	wait(0.7)
	click(Location(1477,875))
	wait(3)
	end
	
	if BattleRegion:exists("battle.png", 10) then
	click(Location(2300,1200))
    wait(1)
	end
	
	if atkround==1 then
	click(Ultcard3Click)
	i=i+1
	elseif atkround==2 then
	click(Ultcard2Click)
	i=i+1
	elseif atkround==3 then
	click(Ultcard1Click)
	i=i+1
	end

	
    if i < 3 then
        if f1 == nil then
            click(Card1Click)
        end
        if f2 == nil then
            click(Card2Click)
        end
        if f3 == nil then
            click(Card3Click)
        end
        if f4 == nil then
            click(Card4Click)
        end
        if f5 == nil then
            click(Card5Click)
        end
    end

    i = 0
    atkround = atkround + 1
	
	
    wait(3)
end

function norcard()
    i = 0
    f1 = Card1Region:exists("weak.png")
	usePreviousSnap(true)
    if f1 ~= nil then
        click(Card1Click)
        i = i + 1
    end

    f2 = Card2Region:exists("weak.png")
    if f2 ~= nil then
        click(Card2Click)
        i = i + 1
    end

    f3 = Card3Region:exists("weak.png")
    if f3 ~= nil then
        click(Card3Click)
        i = i + 1
    end

    f4 = Card4Region:exists("weak.png")
    if f4 ~= nil then
        click(Card4Click)
        i = i + 1
    end

    f5 = Card5Region:exists("weak.png")
    if f5 ~= nil then
        click(Card5Click)
        i = i + 1
    end
	usePreviousSnap(false)
end

function ultcard()
	click(Ultcard1Click)
	click(Ultcard2Click)
	click(Ultcard3Click)
end

function targetchoose()
    t1 = Target1Type:exists("target_servant.png")
	usePreviousSnap(true)
	t2 = Target2Type:exists("target_servant.png")
	t3 = Target3Type:exists("target_servant.png")
	t1a = Target1Type:exists("target_danger.png")
	t2a = Target2Type:exists("target_danger.png")
	t3a = Target3Type:exists("target_danger.png")
    if t1 ~= nil or t1a ~= nil then
        click(Target1Choose)
		toast("Switched to priority target")
		targetchoosen = 1
	elseif t2 ~= nil or t2a ~= nil then
		click(Target2Choose)
		toast("Switched to priority target")
		targetchoosen = 1
	elseif t3 ~= nil or t3a ~= nil then
		click(Target3Choose)
		toast("Switched to priority target")
		targetchoosen = 1
	else
		toast("No priority target selected")
    end
	usePreviousSnap(false)
end

function result()
    atkround=1
    wait(2.5)
    click(Location(1200, 1000))
    wait(3.5)
    click(Location(1200, 1000))
    wait(3.5)
    click(Location(2400, 1350))
    wait(15)
	r1 = QuestrewardRegion:exists("questreward.png")
	if r1 ~= nil then
		click(Location(300,100))
	end
end

--[[
function berserkeBattleRegion()
    click(Location(2300,1200))
    if atkround >= 4 then
        ultcard()
    end
    click(card1)
    click(card2)
    click(card3)
    click(card4)
    click(card5)
    atkround = atkround + 1
    wait (3)
end
]]

while(1) do
	if Refill_or_Not == 1 and refillshown == 0 then
		if Use_Stone == 1 then
			temp = "stones"
		else
			temp = "apples"
		end
		dialogInit()
		addTextView("You are going to use "..How_Many.." "..temp..", remember to check those values everytime you execute the script!")
		dialogShow("Auto Refilling Stamina")
		refillshown = 1
	end
    if MenuRegion:exists("menu.png", 0) then
		toast("Will only select servant/danger enemy as noble phantasm target, please check github for further detail")
        menu()
		targetchoosen = 0
    end
    if BattleRegion:exists("battle.png", 0) then
        battle()
    end
    if ResultRegion:exists("result.png", 0) then
        result()
    end
end