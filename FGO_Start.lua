dir = scriptPath()
loadfile(dir .. "Mod.luac")
dofile(dir .. "Mod.luac")
--Settings:setCompareDimension(true, 2220)
--Settings:setScriptDimension(true, 2220)
Settings:set("MinSimilarity", 0.8)
AllSearch = Region(150, 0, 1920, 1080)
ManuBattle = Region(1790, 960, 280, 120)
BattleLoc = Region(1085, 240, 910, 220)
BattleAttack = Region(1700, 840, 360, 220)
BattleEnd = Region(255, 245, 480, 65)
BattleApple = 0
EndGame2 = Region(513, 907, 10, 10)
EndGame = Region(1970, 1000, 10, 10)
APTime = {
  Region(1025, 45, 170, 60),
  Region(615, 200, 190, 650),
  Region(1670, 800, 10, 10)
}
FCard = {
  Region(220, 530, 300, 400),
  Region(605, 530, 290, 390),
  Region(990, 530, 290, 390),
  Region(1375, 530, 290, 390),
  Region(1760, 530, 290, 390)
}
UCard = {
  Region(660, 170, 200, 280),
  Region(1010, 170, 200, 280),
  Region(1360, 170, 200, 280)
}
RoundMin = Region(1442, 17, 30, 40)
RoundMax = Region(1492, 17, 30, 40)
Enemy = {
  Region(800, 450, 60, 60),
  Region(500, 450, 60, 60),
  Region(290, 450, 60, 60),
  Region(1510, 68, 30, 40)
}
P1 = {
  SK = {
    Region(210, 820, 90, 90),
    Region(350, 820, 90, 90),
    Region(490, 820, 90, 90)
  },
  CD = {
    Region(180, 885, 80, 50),
    Region(325, 885, 80, 50),
    Region(470, 885, 80, 50)
  },
  Tmp = {
    0,
    0,
    0
  }
}
P2 = {
  SK = {
    Region(685, 820, 90, 90),
    Region(825, 820, 90, 90),
    Region(965, 820, 90, 90)
  },
  CD = {
    Region(655, 885, 80, 50),
    Region(800, 885, 80, 50),
    Region(940, 885, 80, 50)
  },
  Tmp = {
    0,
    0,
    0
  }
}
P3 = {
  SK = {
    Region(1165, 820, 90, 90),
    Region(1305, 820, 90, 90),
    Region(1445, 820, 90, 90)
  },
  CD = {
    Region(1135, 885, 80, 50),
    Region(1280, 885, 80, 50),
    Region(1420, 885, 80, 50)
  },
  Tmp = {
    0,
    0,
    0
  }
}
UNP = {
  Region(492, 975, 30, 40),
  Region(967, 975, 30, 40),
  Region(1447, 975, 30, 40)
}
MasterSk = {
  SK = {
    Location(1500, 450),
    Location(1650, 450),
    Location(1780, 450),
    Region(1890, 420, 100, 100)
  },
  CD = {
    0,
    0,
    0
  },
  CCD = {
    Region(1435, 480, 60, 50),
    Region(1570, 480, 60, 50),
    Region(1705, 480, 60, 50)
  }
}
ExChange = {
  Region(250, 400, 220, 220),
  Region(550, 400, 220, 220),
  Region(850, 400, 220, 220),
  Region(1150, 400, 220, 220),
  Region(1450, 400, 220, 220),
  Region(1750, 400, 220, 220),
  Location(1050, 950)
}
SkTarget = {
  Region(630, 500, 60, 50),
  Region(1080, 500, 60, 50),
  Region(1530, 500, 60, 50),
  Region(870, 260, 490, 60)
}
UAttack = {
    Location(835, 373),
    Location(1151, 373),
    Location(1479, 373),
}
EAttack = {
    Location(805, 512),
    Location(584, 512),
    Location(343, 548),
}
SelectFriend = 0
function One()
  dialogInit()
  addTextView("\229\141\161\231\137\135\229\132\170\229\133\136\229\186\166")
  newRow()
  SCRF = {
    "A",
    "B",
    "Q"
  }
  addTextView("\231\172\1721\230\136\176")
  addSpinnerIndex("CardType1O", SCRF, "A")
  addTextView("\239\188\158")
  addSpinnerIndex("CardType2O", SCRF, "B")
  addTextView("\239\188\158")
  addSpinnerIndex("CardType3O", SCRF, "Q")
  addCheckBox("WearCheck", "WEAK\229\132\170\229\133\136", true)
  newRow()
  addTextView("\231\172\1722\230\136\176")
  addSpinnerIndex("CardType1W", SCRF, "A")
  addTextView("\239\188\158")
  addSpinnerIndex("CardType2W", SCRF, "B")
  addTextView("\239\188\158")
  addSpinnerIndex("CardType3W", SCRF, "Q")
  addCheckBox("WearCheck", "WEAK\229\132\170\229\133\136", true)
  newRow()
  addTextView("\231\172\1723\230\136\176")
  addSpinnerIndex("CardType1R", SCRF, "A")
  addTextView("\239\188\158")
  addSpinnerIndex("CardType2R", SCRF, "B")
  addTextView("\239\188\158")
  addSpinnerIndex("CardType3R", SCRF, "Q")
  addCheckBox("WearCheck", "WEAK\229\132\170\229\133\136", true)
  newRow()
  addTextView("\230\149\181\228\186\186\229\132\170\229\133\136\229\186\166")
  SCRF = {
    "\231\172\1721\233\154\187",
    "\231\172\1722\233\154\187",
    "\231\172\1723\233\154\187"
  }
  addTextView("\231\172\1721\230\136\176")
  addSpinnerIndex("EnemySelect1", SCRF, "1")
  addTextView("\231\172\1722\230\136\176")
  addSpinnerIndex("EnemySelect2", SCRF, "1")
  addTextView("\231\172\1723\230\136\176")
  addSpinnerIndex("EnemySelect3", SCRF, "1")
  newRow()
  addTextView("\229\175\182\229\133\183\232\168\173\229\174\154  ")
  SCRF = {
    "\231\172\172\228\184\128\230\136\176\233\150\139\229\167\139",
    "\231\172\172\228\186\140\230\136\176\233\150\139\229\167\139",
    "\231\172\172\228\184\137\230\136\176\233\150\139\229\167\139",
    "NP\230\187\191\229\176\177\231\148\168",
    "\228\184\141\228\189\191\231\148\168"
  }
  addTextView("P1")
  addSpinnerIndex("SetUA1", SCRF, "\231\172\172\228\184\137\230\136\176\233\150\139\229\167\139")
  addTextView("P2")
  addSpinnerIndex("SetUA2", SCRF, "\231\172\172\228\186\140\230\136\176\233\150\139\229\167\139")
  addTextView("P3")
  addSpinnerIndex("SetUA3", SCRF, "NP\230\187\191\229\176\177\231\148\168")
  dialogShowFullScreen("\230\136\176\233\172\165\232\168\173\229\174\154")
  if CardType1O == CardType2O or CardType1O == CardType3O or CardType2O == CardType3O then
    scriptExit("\231\172\1721\230\136\176\229\141\161\231\137\135\229\132\170\229\133\136\229\186\166\232\171\139\229\139\191\233\135\141\232\164\135")
  end
  if CardType1W == CardType2W or CardType1W == CardType3W or CardType2W == CardType3W then
    scriptExit("\231\172\1722\230\136\176\229\141\161\231\137\135\229\132\170\229\133\136\229\186\166\232\171\139\229\139\191\233\135\141\232\164\135")
  end
  if CardType1R == CardType2R or CardType1R == CardType3R or CardType2R == CardType3R then
    scriptExit("\231\172\1723\230\136\176\229\141\161\231\137\135\229\132\170\229\133\136\229\186\166\232\171\139\229\139\191\233\135\141\232\164\135")
  end
  UAttack[1] = ({
    1,
    2,
    3,
    0,
    9
  })[SetUA1]
  UAttack[2] = ({
    1,
    2,
    3,
    0,
    9
  })[SetUA2]
  UAttack[3] = ({
    1,
    2,
    3,
    0,
    9
  })[SetUA3]
  EAttack[1] = ({
    1,
    2,
    3
  })[EnemySelect1]
  EAttack[2] = ({
    1,
    2,
    3
  })[EnemySelect2]
  EAttack[3] = ({
    1,
    2,
    3
  })[EnemySelect3]
  AgainSelect(({
    "A",
    "B",
    "Q"
  })[CardType1O], ({
    "A",
    "B",
    "Q"
  })[CardType2O], ({
    "A",
    "B",
    "Q"
  })[CardType3O], 1)
  AgainSelect(({
    "A",
    "B",
    "Q"
  })[CardType1W], ({
    "A",
    "B",
    "Q"
  })[CardType2W], ({
    "A",
    "B",
    "Q"
  })[CardType3W], 2)
  AgainSelect(({
    "A",
    "B",
    "Q"
  })[CardType1R], ({
    "A",
    "B",
    "Q"
  })[CardType2R], ({
    "A",
    "B",
    "Q"
  })[CardType3R], 3)
  dialogInit()
  addTextView("\228\189\191\231\148\168")
  SCRF = {
    "\233\135\145\232\152\139\230\158\156100%",
    "\233\138\128\232\152\139\230\158\15650%",
    "\233\138\133\232\152\139\230\158\15610AP"
  }
  addSpinnerIndex("EatApple", SCRF, "\233\135\145\232\152\139\230\158\156100")
  addTextView("\239\188\140\229\133\177\229\144\131")
  addEditNumber("EatAppleNum", 3)
  addTextView("\233\161\134\227\128\130")
  addCheckBox("FriendNum", "\229\165\189\229\143\139\231\155\178\233\129\184", true)
  newRow()
  addTextView("助战礼装")
  SCRF = {
    "好友礼装",
    "慈爱",
    "显学",
	"死艺"
  }
  addSpinnerIndex("CraftNum", SCRF, "好友礼装")
  newRow()
  dialogShowFullScreen("\229\159\186\230\156\172\232\168\173\229\174\154")
  if EatApple == 1 then
    EatApple = "Apple1.png"
  elseif EatApple == 2 then
    EatApple = "Apple2.png"
  else
    EatApple = "Apple3.png"
  end
  if CraftNum == 1 then
    CraftNum = "Friend.png"
  elseif CraftNum == 2 then
    CraftNum = "Craft.png"
  elseif CraftNum == 3 then
    CraftNum = "Craft2.png"
  else
    CraftNum = "Craft3.png"
  end
  if FriendNum then
    SelectFriend = 1
  end
  if getUserID() and EatAppleNum > 5 then
    scriptExit("Pro2\230\156\131\229\147\161\230\156\128\229\164\154\228\189\191\231\148\1685\233\161\134\232\152\139\230\158\156")
  end
  if not getUserID() and 3 < EatAppleNum then
    scriptExit("\233\157\158Pro2\230\156\131\229\147\161\230\156\128\229\164\154\228\189\191\231\148\1683\233\161\134\232\152\139\230\158\156")
  end
end


function a0a0a0a0()
  One()
  readfile("Skill.txt")
  toast("start.")
  while true do
    if ManuBattle:exists("Menu.png", 1) then
      click(BattleLoc)
      if APTime[1]:exists("APNo.png", 1) then
        if BattleApple >= EatAppleNum then
          keyevent(26)
          scriptExit("\232\168\173\229\174\154\232\152\139\230\158\156\229\183\178\231\182\147\229\133\168\230\149\184\228\189\191\231\148\168\229\174\140\227\128\130")
        end
        click(APTime[3])
        wait(1)
        click(APTime[2]:exists(EatApple, 2))
        BattleApple = BattleApple + 1
        click(exists("APDecided.png", 3))
		wait(5)
      end
      --FriendSelet(SelectFriend)
	  findCraft()
      CheckImage(0, ManuBattle, "BattleStart.png", ManuBattle, 30, 3)
      --CheckImage(1, AttackReady, "ChickAttack.png", UCard[2], 5, 3)
    end
    if BattleAttack:exists("Attack.png", 1) then
      RoundCheck()
      click(Enemy[EAttack[Round]])
      AttackSkill()
      wait(1)
      click(Enemy[EAttack[Round]])
      wait(1)
      click(BattleAttack)
      while true do
        wait(1)
        if BattleAttack:exists("Attack.png", 1) then
          click(Region(1750, 840, 240, 120))
          wait(2)
        else
          break
        end
      end
      wait(2.5)
      AttackLOOP()
    end
    if BattleEnd:exists("BattleEnd.png", 1) then
      ReSetVal()
	  --if exists("FriendCancel.png", 3) then
	   --click(getLastMatch())
	  --end
	  --CheckImage(1, ManuBattle, "EndNEXT.png", EndGame2, 1, 2)
      CheckImage(1, ManuBattle, "Menu.png", EndGame, 1, 2)
    end
  end
end

function findCraft()
	if exists(CraftNum, 0) then
	   toast("find Craft")
	   click(getLastMatch())
	else
	   click(Location(2013,494))
	   if exists(CraftNum, 0) then
	      toast("find Craft")
	      click(getLastMatch())

	   	else
	       click(Location(2013,651))
	       if exists(CraftNum, 0) then
	          toast("find Craft")
	          click(getLastMatch())
	       else
	          click(Location(2013,809))
	          if exists(CraftNum, 0) then
	             toast("find Craft")
	             click(getLastMatch())
	          else
			     click(Location(2013,959))
			  	 if exists(CraftNum, 0) then
	             toast("find Craft")
	             click(getLastMatch())
	             else
	             click(Location(2013,284))
	             wait(1)
	             click(Location(900,750))
				 end
	   	      end
	   	   end
	   end
	end

end

a0a0a0a0()
