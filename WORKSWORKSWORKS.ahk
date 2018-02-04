; http://www.autohotkey.com/board/topic/90723-achieve-rainmeter-style-gui-via-gdip-library/?p=573445
#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Screen
;SendMode Input
#SingleInstance Force
SetTitleMatchMode RegEx
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
;SetMouseDelay -1
SetBatchLines -1


Px=1240
Py=1050

width:= 210
Gui +LastFound
WinSet, Transparent, 180
Gui, Color, 808080
Gui, Margin, 0, 0
Gui, Font, s11 cD0D0D0 Bold
Gui, Add, Progress, % "x-1 y-1 w" (Width+2) " h31 Background404040 Disabled hwndHPROG"
Control, ExStyle, -0x20000, , ahk_id %HPROG% ; propably only needed on Win XP
Gui, Add, Text, % "x0 y0 w" Width " h30 BackgroundTrans Center 0x200 gGuiMove vCaption", Example
Gui, Font, s8
;~;///////////////////////////////////////////////////////BACKSPIN BUTTONS ////////////////////////////////////////
Gui Add, Button, hWndhButton3 gBS25 x3 y0 w50 h15, 25
Gui Add, Button, gBS50 x55 y0 w50 h15, 50
Gui Add, Button, gBS75 x105 y0 w50 h15, 75
Gui Add, Button, gBS100 x158 y0 w50 h15, 100
;~;//////////////////////////////////////////////////////////////CALCULATOR/////////////////////////////////////////////////
;~;//////////////////////////////////////////////////////////////CALCULATOR/////////////////////////////////////////////////
Gui Font, s15 Bold
Gui Add, Edit, vDistanceI x5 y22 w40 h30 Center, 0
Gui Add, Edit, vElevationI x53 y22 w40 h30 Center, 0
Gui Add, Edit, vWindI x109 y22 w40 h30 Center, 0
Gui Add, Edit, vMphI x165 y22 w40 h30 Center, 0
Gui Add, Button, gcalculate x139 y71 w67 h60, calc
Gui Add, Button, greset x0 y71 w67 h60, reset
Gui Add, Edit, vDistanceFinal x69 y70 w67 h25 Center, 0
Gui Add, Edit, vOffset x69 y100 w67 h25 Center, 0
Gui Font

Gui Font,  Bold  s13
Gui Add, Text, cRed vClubData x8 y573 w94 h50 +0x1200,
Gui Add, DropDownList, vBallSelection x104 y576 w100, Ball40 |-|Ball35|-|Ball40||
;~;/////////////////////////////////////////////////////////FADER SLIDER///////////////////////////////////////////////////////////////
;~;/////////////////////////////////////////////////////////FADER SLIDER///////////////////////////////////////////////////////////////
Gui Font, Bold
Gui Add, Slider, vDrawFadeSlider gDrawFadeSlider x0 y192 w207 h42  Line5 page5 Range-100-100 AltSubmit, 0
Gui Font, s15 Bold
Gui Add, Button, gMinusDrawFadeSlider x0 y144 w47 h46 AltSubmit, -5
;~;///////////////////////////////////////////////////////BACKSPIN BUTTONS ////////////////////////////////////////
Gui Add, Button, gMinus1DrawFadeSlider x46 y144 w32 h46 AltSubmit, -1
Gui Font, s20 Bold
Gui Add, Text, x84 y147 w47 h40 +0x1200 +Center vDFade AltSubmit, 0
Gui Font, s15 Bold
Gui Add, Button, gPlus1DrawFadeSlider x137 y144 w32 h46 AltSubmit, +1
Gui Add, Button, gPlusDrawFadeSlider x168 y144 w40 h46 AltSubmit, +5

;~;//////////////////////////////////////////////////////////////POWERMETERS//////////////////////////////////////////
;~;//////////////////////////////////////////////////////////////POWERMETERS//////////////////////////////////////////
Gui Add, Slider, x5 y300 w207 h33  Tickinterval10 Range0-376  Line10 page10 gPowerSlider vPowerSlider  AltSubmit, 376         ;;;////////////////POWERSLIDER///////////////////////////
Gui Add, Button, gMinus5PowerSlider x0 y240 w40 h46 AltSubmit, -1
Gui Add, Button, gMinus2PowerSlider  x40 y240 w40 h46 AltSubmit, -5
Gui Font, s12 Bold
Gui Add, Text, x91 y236 w32 h23 +0x1200 +Center vPower AltSubmit, 376
Gui Add, Text, x91 y268 w32 h23 +0x1200 +Center vPctHit AltSubmit,  0
Gui Font, s15 Bold
Gui Add, Button, x128 y240 w40 h46 gPlus2PowerSlider AltSubmit, 15
Gui Add, Button, gPlus5PowerSlider x168 y240 w40 h46 AltSubmit, 25   
;~;/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;~;//////////////////////////////////////////////////////////////////////////SWING BUTTONS//////////////////////////////////////////////////////////////////////////////
Gui Font, s20 Bold cRed
Gui Add, Button, gSwing   x8 y336 w197 h101, Swing
Gui Font, s18 Bold cMaroon
Gui Font, s10 cPurple Bold
Gui Add, Text, x94 y439 w100 h40 Center vSwingTiming, 000000
Gui Font, s12 Bold
Gui Add, DropDownList, x0 y625 w203 vClubSelection, ChoseClub|Driver|Irons||3 Wood|Starter Hybrid|Callaways|Clevelands




;~;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;~ ;//////////////////////////////////////////////PUTTERSTUFF///////////////////////////////////////////////////////////////////////////////////////////////////////////////
Gui Add, Button, gPutt x0 y496 w207 h74, Putt
Gui Font, s10 Bold
Gui Add, Radio ,  x10 y877 vPup, Uphill
Gui Add, Radio ,  x90 y877 vPdown Checked , Downhill
Gui Font, s12 Bold
Gui Add, DropDownList, vPuttSelection x4 y460 w80, PPct||100|95|90|85|80|75|70|65|60|55|50|45|40|35|30|25|20|15|10
Gui Font, Bold
Gui Add, Slider, x2 y715 w207 h33 Tickinterval10  Range-300-300  vPuttslider gPuttSlider  AltSubmit, -135
Gui Add,  DropDownList, x2 y750 vGrnSpd  , Green Speed|Champ|Tourney||VryFst|Fast|Standard|Slow
Gui Add,  DropDownList, vPuttLength x128 y750 w80 , Putt Max|15||30|60|100|150|300
Gui Font, s15 Bold
Gui Add, Edit, vPDistance x5 y780 w40 h30 Center, 0
Gui Add, Checkbox, x88 y846 vECQSChkBox
Gui Font
Gui Font, s15 Bold
Gui Add, Edit, vPElev x53 y780 w40 h30 Center, 0
Gui Font, s20 Bold
Gui Add, Button, x106 y780 w100 h25 gPPcalc Center, Calc
Gui Add, Edit, vECEndDist  x5 y815 w80 h60 Center, 0
Gui Add, Edit, vECEndPct  x106  y815 w80  h60 Center, 0
;~;//////////////////////////PUTT DETAILS AND ROUGH/SAND DISTANCES
;~;//////////////////////////PUTT DETAILS AND ROUGH/SAND DISTANCES
;~;//////////////////////////PUTT DETAILS AND ROUGH/SAND DISTANCES

Gui font
Gui Add, Text, x2     y900 w45 h23 Center +0x200, AdjDist
Gui Add, Text, x52   y900 w45 h23  Center +0x200, PwrAdj
Gui Add, Text, x102 y900 w45 h23 Center +0x200, QSAdj
Gui Add, Text, x152 y900 w45 h23 Center +0x200, QSDist
Gui Add, Text, x2      y924 w45 h23 vECAdjDist  Center +0x1200, 000
Gui Add, Text, x52    y924 w45 h23 vECPPct Center +0x1200, 000
Gui Add, Text, x102  y924 w45 h23  vECQSDst Center +0x1200, 000
Gui Add, text, x152  y924 w45 h23 vECQSAdj  Center +0x1200, 000
Gui font, cGreen
Gui Add, Text, x2 y950 w47 h23 Center +0x200, 25/35R
Gui Add, Text, x52 y950 w47 h23  Center +0x200, 30/40R
Gui Add, Text, x102 y950 w47 h23 Center +0x200, 40/50/R
Gui Add, Text, x152 y950 w47 h23 Center +0x200, 50/60R
Gui Add, Text, x2 y974 w47 h23 vRough23  Center +0x1200, 000
Gui Add, Text, x52 y974 w47 h23 vRough34 Center +0x1200, 000
Gui Add, Text, x102 y974 w47 h23 vRough45 Center +0x1200, 000
Gui Add, text, x152 y974 w47 h23 vRough56  Center +0x1200, 000
Gui font, cRed
Gui Add, Text, x2 y1000 w47 h23 Center +0x200, 25/35S
Gui Add, Text, x52 y1000 w47 h23  Center +0x200, 30/40S
Gui Add, Text, x102 y1000 w47 h23 Center +0x200, 40/50/S
Gui Add, Text, x152 y1000 w47 h23 Center +0x200, 50/60S
Gui Add, Text, x2 y1024 w47 h23 vSand23  Center +0x1200, 000
Gui Add, Text, x52 y1024 w47 h23 vSand34 Center +0x1200, 000
Gui Add, Text, x102 y1024 w47 h23  vSand45 Center +0x1200, 000
Gui Add, text, x152 y1024 w47 h23 vSand56  Center +0x1200, 000
Gui font
Gui, Add, Text, % "x7 y+10 w" (Width-14) "r1 +0x4000 vTX5 gClose", Close
Gui, Add, Text, % "x7 y+10 w" (Width-14) "h5 vP"
Gui Show, x1698 y2 w215 h1080,App_Calcs_FillPCT_WORKING
Gui, + AlwaysOnTop
GuiControlGet, P, Pos
H := PY + PH
Gui, -Caption
WinSet, Region, 0-0 w%Width% h%H% r6-6
Gui, Show, % "w" Width " NA" " x" (A_ScreenWidth - Width) " y150"
WinSet AlwaysOnTop

GuiMove:
PostMessage, 0xA1, 2
return


close:



Return





reset:
GuiControl,, DistanceI , 0
GuiControl,,ElevationI, 0
GuiControl,,WindI, 0
GuiControl,,MphI, 0
GuiControl,,DistanceFinal, 0
GuiControl,,ECEndDist, 0.0
GuiControl,,ECEndPct, 00
GuiControl,,PDistance,00
GuiControl,,Pup, 1
GuiControl,,PuttSlider, -138
GuiControl,,PElev, 0
GuiControl,,PowerSlider, 376
GuiControl,,PctHit, 100
GuiControl,,rough23, 0
GuiControl,,rough34, 0
GuiControl,,rough45, 0
GuiControl,,rough56, 0
GuiControl,,Sand23, 0
GuiControl,,Sand34, 0
GuiControl,,Sand45, 0
GuiControl,,Sand56, 0
GuiControl,,ECQSAdj, 0
GuiControl,,ECQSDst, 0
GuiControl,,ECPPct, 0
GuiControl,,ECAdjDist, 0
return
calculate:
Gui, Submit, NoHide

If  (WindI = 1 or WindI = 11)
{
	Offset := Round(MphI*(DistanceI - ElevationI/3)/200) ,DistanceFinal := Round(-0.0033335*MphI*(DistanceI-ElevationI/3)+DistanceI+ElevationI/3)
}
else if  (WindI = 2 or WindI =10)
{
	Offset := Round(MphI*(DistanceI-ElevationI/3)/100-3),DistanceFinal := Round(-0.0016665*MphI*(DistanceI-ElevationI/3)+DistanceI+ElevationI/3)
}
else if (WindI = 3 or WindI = 9)
{
	Offset := Round(MphI*(DistanceI-ElevationI/3)/100),DistanceFinal := Round(0*MphI*(DistanceI-ElevationI/3)+DistanceI+ElevationI/3)

}
else if (WindI = 4 or WindI = 8)
{
	Offset := Round(MphI*(DistanceI-ElevationI/3)/100-3),DistanceFinal := Round(0.0016665*MphI*(DistanceI-ElevationI/3)+DistanceI+ElevationI/3)
}
else if  (WindI = 5 or WindI = 7)
{
	Offset := Round(MphI*(DistanceI-ElevationI/3)/200),DistanceFinal := Round(0.0033335*MphI*(DistanceI-ElevationI/3)+DistanceI+ElevationI/3)
}
else if (WindI =12 )
{
	Offset := 0,DistanceFinal := Round(-0.005*MphI*(DistanceI-ElevationI/3)+DistanceI+ElevationI/3)
}
else if (WindI = 6)
{
	Offset := 0,DistanceFinal := Round(0.005*MphI*(DistanceI-ElevationI/3)+DistanceI+ElevationI/3)

}


Sand23 := Round((DistanceFinal/.9))
Sand34 := Round((DistanceFinal /.75))
Sand45 := Round((DistanceFinal /.63))
Sand56 := Round((DistanceFinal /.58))
Rough23 := Round((DistanceFinal /.97))
Rough34 := Round((DistanceFinal /.89))
Rough45 := Round((DistanceFinal /.80))
Rough56 := Round((DistanceFinal /.65))


GuiControl,,DistanceFinal, %DistanceFinal%
GuiControl,,Offset, %Offset%
GuiControl,,Rough23, %Rough23%
GuiControl,,Rough34, %Rough34%
GuiControl,,Rough45, %Rough45%
GuiControl,,Rough56, %Rough56%
GuiControl,,Sand23, %Sand23%
GuiControl,,Sand34, %Sand34%
GuiControl,,Sand45, %Sand45%
GuiControl,,Sand56, %Sand56%





percenthit:

if  DistanceFinal between 19 and 46
{
	PctHit := Round(DistanceFinal/.5)
	GuiControl,,ClubData, 50P %PctHit%Pct
	GuiControl,,ClubSelection, Clevelands
	
}
else if  DistanceFinal between 46 and 63
{
	PctHit := Round(DistanceFinal/.63)
	GuiControl,,ClubData, 60Y %PctHit%Pct
	GuiControl,,ClubSelection, Clevelands
}
else if  DistanceFinal between 63 and 82
{
	PctHit := Round(DistanceFinal/.82)
	GuiControl,,ClubData,  80W  %PctHit%Pct
	GuiControl,,ClubSelection, Callaways
}
else if  DistanceFinal between 82 and 104
{
	PctHit := Round(DistanceFinal/1.04)
	GuiControl,,ClubData, MD100 %PctHit%Pct
	GuiControl,,ClubSelection, Callaways
}
else if  DistanceFinal between 104 and 125
{
	PctHit := Round(DistanceFinal/1.25)
	GuiControl,,ClubData, PW %PctHit%Pct
	GuiControl,,ClubSelection, Irons
}
else if DistanceFinal between 122 and 130
{
	PctHit := Round(DistanceFinal/1.3)
	GuiControl,,ClubData, 9I %PctHit%Pct
	GuiControl,,ClubSelection, Irons
}
else if DistanceFinal between 130 and 145
{
	PctHit := Round(DistanceFinal/1.45)
	GuiControl,,ClubData, 8I %PctHit%Pct
	GuiControl,,ClubSelection, Irons
}
else if DistanceFinal between 145 and 157
{
	PctHit := Round(DistanceFinal/1.57)
	GuiControl,,ClubData, 7I %PctHit%Pct
	GuiControl,,ClubSelection, Irons
}
else if DistanceFinal between 151 and 172
{
	PctHit := Round(DistanceFinal/1.72)
	GuiControl,,ClubData, 6I %PctHit%Pct
	GuiControl,,ClubSelection, Irons
}
else if DistanceFinal between 172 and 185
{
	PctHit := Round(DistanceFinal/1.82)
	GuiControl,,ClubData, 5I %PctHit%Pct
	GuiControl,,ClubSelection, Irons
}
else if DistanceFinal between 185 and 204
{
	PctHit := Round(DistanceFinal/2.00)
	GuiControl,,ClubData, 4I %PctHit%Pct
	GuiControl,,ClubSelection, Irons
}
else if DistanceFinal between 204 and 227
{
	PctHit := Round(DistanceFinal/2.24)
	GuiControl,,ClubData, 3I %PctHit%Pct
	GuiControl,,ClubSelection, Irons
}
else if DistanceFinal between 227 and 245
{
	PctHit := Round(DistanceFinal/2.45)
	GuiControl,,ClubData, 3W %PctHit%Pct
	GuiControl,,ClubSelection, 3Wood
}
else if DistanceFinal between 245 and 295
{
	PctHit := Round(DistanceFinal/2.95)
	GuiControl,,ClubData, DR %PctHit%Pct
	GuiControl,,ClubSelection, Driver
}


listvars



if PctHit = 100
{
	GuiControl,,Powerslider, 396
}
else if PctHit = 99
{
	GuiControl,,PowerSlider, 364	
}
else if PctHit = 98
{
	GuiControl,,Powerslider, 351
}
else if PctHit = 97
{
	GuiControl,,Powerslider, 337
}
else if PctHit = 96
{
	GuiControl,,Powerslider, 323
}
else if PctHit = 95
{
	GuiControl,,Powerslider, 311
}
else if PctHit = 94
{
	GuiControl,,Powerslider, 303
}
else if PctHit = 93
{
	GuiControl,,Powerslider, 294
}
else if PctHit = 92
{
	GuiControl,,Powerslider, 284
}
else if PctHit = 91
{
	GuiControl,,Powerslider, 268
}
else if PctHit = 90
{
	GuiControl,,Powerslider, 259
}
else if PctHit = 89
{
	GuiControl,,Powerslider, 251
}
else if PctHit = 88
{
	GuiControl,,Powerslider, 242
}
else if PctHit = 87
{
	GuiControl,,Powerslider, 234
}
else if PctHit = 86
{
	GuiControl,,Powerslider, 227
}
else if PctHit = 85
{
	GuiControl,,Powerslider, 222
}

GuiControl,,PctHit, %PctHit%
GuiControl,,Power, %PowerSlider%




DrawFadeSlider:
GuiControlGet, DrawFadeSlider,
GuiControl, , Dfade, %DrawFadeSlider%


PowerSlider:
GuiControlGet, PowerSlider,
GuiControl, , Power, %PowerSlider%


PuttSlider:
GuiControlGet,HPower
GuiControl, , DPuttfade, %PuttSlider%





return


;//////////////////////////////////BACKSPINNING///////////////////////////////////////
Swing:
Critical
Gui, Submit, NoHide

DllCall("QueryPerformanceCounter", "Int64*", CounterBefore)

If (ClubSelection = "Driver" and BallSelection = "Ball40")   ;2320
{
MouseClickDrag, Left, %Px%, %Py%, Px, Py -Powerslider -20 , 20                                          ;3287
		Sleep,2492+DrawFadeSlider
	Click, Left

}
Else If (ClubSelection = "Irons" and BallSelection = "Ball40")   ;2320
{
	MouseClickDrag, Left, %Px%, %Py%, Px, Py -PowerSlider-5, 10
		Sleep,2319+DrawFadeSlider
	Click, Left

}
Else If (ClubSelection = "3 Wood" and BallSelection = "Ball40")
{
	MouseClickDrag, Left, %Px%, %Py%, Px, Py -PowerSlider -3, 10
		Sleep,2492+DrawFadeSlider
	Click, Left


}
Else If (ClubSelection = "Starter Hybrid" and BallSelection = "Ball40")
{
	MouseClickDrag, Left, %Px%, %Py%, Px, Py - PowerSlider - 130, 5
		Sleep,2950+DrawFadeSlider
	Click, Left

}
Else If (ClubSelection = "Callaways" and BallSelection = "Ball40")
{
	MouseClickDrag, Left, %Px%, %Py%, Px, Py -PowerSlider, 10
		Sleep,2849+DrawFadeSlider
	Click, Left
}
Else If (ClubSelection = "Clevelands" and BallSelection = "Ball40")
{
	MouseClickDrag, Left, %Px%, %Py%, Px, Py -PowerSlider -5, 10
		Sleep,2589+DrawFadeSlider
	Click, Left
}
DllCall("QueryPerformanceCounter", "Int64*", CounterAfter)
SwingTiming := (CounterAfter - CounterBefore)


GuiControl,, SwingTiming, %SwingTiming%
GuiControl,,DrawFadeSlider, 0
GuiControl,,PowerSlider,380
GuiControl,,Power, 380
GuiControl,,PctHit, 0
GuiControl,,Dfade,0
GuiControl,,PctFade,0
GuiControl,,ClubSelection, ChoseClub||Driver|Irons|3 Wood|Starter Hybrid|Callaways|Clevelands
GuiControl,,BallSelection, |Ball40||-|Ball35|-|
return












Minus1DrawFadeSlider:
GuiControl,,DrawFadeSlider, +-1
Gui, Submit, NoHide
GuiControl, , Dfade, %DrawFadeSlider%
return
Plus1DrawFadeSlider:
GuiControl,,DrawFadeSlider, +1
Gui, Submit, NoHide
GuiControl, , Dfade, %DrawFadeSlider%
return
PlusDrawFadeSlider:
GuiControl,,DrawFadeSlider, +5
Gui, Submit, NoHide
GuiControl, , Dfade, %DrawFadeSlider%
return
MinusDrawFadeSlider:
GuiControl,,DrawFadeSlider, +-5
Gui, Submit, NoHide
GuiControl, , Dfade, %DrawFadeSlider%
return
Minus2PowerSlider:
GuiControl, , PowerSlider, +-5
Gui, Submit, NoHide
GuiControl, , Power, %PowerSlider%
;GoSub,PercentReturn
return
Minus5PowerSlider:
GuiControl, , PowerSlider, +-10
Gui, Submit, NoHide
GuiControl, , Power, %PowerSlider%
;GoSub,PercentReturn
return
Plus2PowerSlider:
GuiControl, , PowerSlider, +10
Gui, Submit, NoHide
GuiControl, , Power, %PowerSlider%
;GoSub,PercentReturn
return
Plus5PowerSlider:
GuiControl, , PowerSlider, +20
Gui, Submit, NoHide
GuiControl, , Power, %PowerSlider%
;GoSub,PercentReturn
return
Plus10PowerSlider:
GuiControl,,PowerSlider, +30
Gui, Submit, NoHide
GuiControl, , Power, %PowerSlider%
;GoSub,PercentReturn



return
BS100:
{
		MouseClickDrag, Left,1530, 1040, 1530,1064 , 20
	}
	return

	BS75:
	{
		MouseClickDrag, Left,1530, 1040, 1530,1057.75 , 20
	}
	return

	BS50:   ;/////////////////50% Backspin
	{
		MouseClickDrag, Left,1530, 1040, 1530,1052 , 20
	}
	return

	BS25:    ;//////////////////25% Backspin
	{
		MouseClickDrag, Left,1530, 1040, 1530,1046.5 , 20
}
return

































PPcalc:
Gui, Submit, NoHide
	;First things first - Set Calcs based on Green Speed and Uphill/Downhill
PuttDistance := PDistance
If  (GrnSpd = "Champ" and Pdown = 1 )
{
	ECPPct := 0.695
	ECAdjDist := PDistance - PElev * .625
	ECQSDst  := 5.25
	ECQSAdj := (PElev * .0262)
}
Else If  (GrnSpd = "Champ" and Pup = 1 )
{
	ECPPct := 0.795
	ECAdjDist := PDistance +( Pelev * .520)+ .8125
	ECQSAdj := 0
}
Else If (GrnSpd = "Tourney" and PDown = 1)
{
	ECPPct := .7175
	ECAdjDist := PDistance - (PElev  * .600)
	ECQSDst := 4.50
	ECQSAdj := PElev  * .0275
}
Else If (GrnSpd = "Tourney" and Pup = 1)
{
	ECPPct := .8225,
	ECAdjDist := (PDistance  + (Pelev  *  .5375) +  .850)
	ECQSAdj := 0
}
Else If (GrnSpd = "VryFst" and PDown = 1)
{
	ECPPct := .87
	ECAdjDist := (PDistance - (PElev  * .550))
	ECQSDst = 4.00
	ECQSAdj := (PElev  *  .0262)
}
Else if (GrnSpd = "VryFst" and Pup = 1)
{
	ECPPct := .9325
	ECAdjDist := (PDistance  + ( Pelev  *  .55) +  .925)
	ECQSAdj := 0
}
Else If (GrnSpd = "Fast" and PDown = 1)
{
	ECPPct := .9425,
	ECAdjDist := (PDistance - (PElev  * .500))
	ECQSDst = 3.75
	ECQSAdj := (PElev  *  .0253)
}
Else if (GrnSpd = "Fast" and Pup = 1)
{
	ECPPct := .9925,
	ECAdjDist := (PDistance  + ( Pelev  *  .5675) +  .95)
	ECQSAdj := 0
}
Else If (GrnSpd = "Standard" and PDown = 1)
{
	ECPPct := 1.0525
	ECAdjDist := (PDistance - (PElev  * .550))
	ECQSDst = 3.25
	ECQSAdj := (PElev  *  .0245)
}
Else if (GrnSpd = "Standard" and Pup = 1)
{
	ECPPct := 1.175
	ECAdjDist := (PDistance  + ( Pelev  *  .6) +  .95)
	ECQSAdj := 0
}
Else If (GrnSpd = "Slow" and PDown = 1)
{
	ECPPct := 1.0975
	ECAdjDist := (PDistance - (PElev  * .550))
	ECQSDst = 3.00
	ECQSAdj := (PElev  *  .0232)
}
Else if (GrnSpd = "Slow" and Pup = 1)
{
	ECPPct := 1.195
	ECAdjDist := (PDistance  + ( Pelev  *  .6125) +  .95)
	ECQSAdj := 0
}


QSDistance := ECQSDst
Gui, Submit, NoHide




If (PUp = 1)
{
	ECQSChkBox := 0
	ECQSDst := 0
}
Else If (PDown = 1) and (Pelev >= 2) and (Pdistance <= QSDistance)
{
GuiControl,, ECQSChkBox, 1
GuiControl,, ECQSChkBox , %ECQSChkBox%
}
Else If ((PDistance / PElev) <= (QSDistance)) and ((PDistance / PElev) <= (QSDistance) / 2)
{
	ECQSChkBox := 0
	GuiControl,, ECQSChkBox , %ECQSChkBox%
}
Else
{
	ECQSChkBox := 0
	GuiControl,, ECQSChkBox , %ECQSChkBox%
}



If ((PDistance / PElev) <= (QSDistance / 2))
{
	ECQSChkBox := 1
	GuiControl,, ECQSChkBox , %ECQSChkBox%
}
else
{
	ECQSChkBox := 0
	GuiControl,, ECQSChkBox , %ECQSChkBox%
}


; 'this calc will reduce the estimated value for an extremely quick slope with distance over 10ft


If  (PDistance >= 10) And (PElev <> 0) And ((PDistance / PElev) <= QSDistance)
{
	ECAdjDist := ECAdjDist + (PDistance * 0.1) *  (QSDistance * 0.41 * -1)
}

Else if (PDistance >= 10) And (PElev <> 0) and (PDistance / PElev <= QSDistance)
{
	ECAdjDist := ECAdjDist + (PDistance * 0.035) * (QSDistance * 0.125 * -1)
}


If (ECQSChkBox = 1)
{
	ECEndDist := Round(ECAdjDist * (ECPPct - ECQSAdj), 1)
	ECEndPct := Round(((ECAdjDist * ECPPct - ECQSAdj) / PuttLength) * 100, 1)
}
Else
{
	ECEndDist := Round(ECAdjDist * ECPPct, 1)
	ECEndPct := Round((ECAdjDist * ECPPct / PuttLength * 100), 1)
}


ECPPct := Round(ECPPct,3)
ECAdjDist := Round(ECAdjDist,4)
ECQSAdj := Round(ECQSAdj,3)
ECQSDst := Round(ECQSDst,3)


GuiControl,, ECEndPct , %ECEndPct%
GuiControl,, ECEndDist , %ECEndDist%
GuiControl,, ECPPct, %ECPPct%
GuiControl,, ECAdjDist, %ECAdjDist%
GuiControl,, ECQSAdj, %ECQSAdj%
GuiControl,, ECQSDst , %ECQSDst%

return


;/////////////////////////////////PUTTERSWINGS///////////////////////////////////
	Putt:
	Critical
	Gui, Submit, NoHide
	msgbox offset is %PuttSlider%

	If (PuttSelection = "95" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py -480, 5      ;4.0
		Critical
		Sleep, 2929 + Puttslider
		Click, Left
	}
;///////////90percentputter
	Else If (PuttSelection = "90" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py -460, 5
;Critical
		Sleep, 2910  + Puttslider
		Click, Left
	}
;///////////85percentputter
	Else If (PuttSelection = "85" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 430, 5
;Critical
		Sleep, 2899 + Puttslider
		Click, Left
	}
;///////////80percentputter
	Else If (PuttSelection = "80" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 405, 5
		Critical
		Sleep, 2885+Puttslider
		Click, Left
	}
;///////////75percentputter
	Else If (PuttSelection = "75" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 376, 5
;Critical
		Sleep, 2870 + Puttslider
		Click, Left
	}
;///////////70percentputter
	Else If (PuttSelection = "70" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 355, 5
;Critical
		Sleep, 2837 + Puttslider
		Click, Left
	}
;///////////65percentputter
	Else If (PuttSelection = "65" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py -329, 5
;Critical
		Sleep, 2834+ Puttslider
		Click, Left
	}
;///////////60percentputter
	Else If (PuttSelection = "60" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py -300, 5
;Critical
		Sleep, 2825 + Puttslider
		Click, Left
	}
;///////////55percentputter
	Else If (PuttSelection = "55" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 280, 5
;Critical
		Sleep, 2795 + Puttslider
		Click, Left
	}
;///////////50percentputter
	Else If (PuttSelection = "50" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 255 , 5
;Critical
		Sleep, 2769 + Puttslider
		Click, Left
	}
;///////////45percentputter
	Else If (PuttSelection = "45" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py -230, 5
;Critical
		Sleep, 2743 +Puttslider
		Click, Left
	}
;///////////40percentputter
	Else If (PuttSelection = "40" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py -200, 5
;Critical
		Sleep, 2714 +Puttslider
		Click, Left
	}
;///////////35percentputter
	Else If (PuttSelection = "35" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 175, 5
;Critical
		Sleep, 2686 +Puttslider
		Click, Left
	}
;///////////30percentputter
	Else If (PuttSelection = "30" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 150, 5
;Critical
		Sleep, 2660 +Puttslider
		Click, Left
	}
;///////////25percentputter
	Else If (PuttSelection = "25" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 125, 5
;Critical
		Sleep, 2620 +Puttslider
		Click, Left
	}
;///////////20percentputter
	Else If (PuttSelection = "20" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 100, 5
;Critical
		Sleep, 2582 + Puttslider
		Click, Left
	}
;///////////15percentputter
	Else If (PuttSelection = "15" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 80, 5
;Critical
		Sleep, 2550 + Puttslider
		Click, Left
	}
;///////////10percentputter
	Else If (PuttSelection = "10" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 50, 5
;Critical
		Sleep, 2500 + Puttslider
		Click, Left
	}
;///////////5percentputter
	Else If (PuttSelection = "5" )
	{
		MouseClickDrag, Left, %Px%, %Py%, Px, Py - 25, 5
;Critical
		Sleep, 2450 + Puttslider
		Click, Left
}
GuiControl, ,PuttSelection, Pick Percentage||50|-|100|95|90|85|80|75|70|65|60|55|50|45|40|35|30|25|20|15|10
GuiControl,,DrawFadeSlider, 0
return






;reset:
;GuiControl,, DistanceI , 0
;GuiControl,,ElevationI, 0
;GuiControl,,WindI, 0
;GuiControl,,MphI, 0
;GuiControl,,DistanceFinal, 0
;GuiControl,,ECEndDist, 0.0
;GuiControl,,ECEndPct, 00
;GuiControl,,PDistance,00
;GuiControl,,Pup, 1
;GuiControl,,PuttSlider, -138
;GuiControl,,PElev, 0
;GuiControl,,PowerSlider, 376
;GuiControl,,PctHit, 100
;GuiControl,,rough23, 0
;GuiControl,,rough34, 0
;GuiControl,,rough45, 0
;GuiControl,,rough56, 0
;GuiControl,,Sand23, 0
;GuiControl,,Sand34, 0
;GuiControl,,Sand45, 0
;GuiControl,,Sand56, 0
;GuiControl,,ECQSAdj, 0
;GuiControl,,ECQSDst, 0
;GuiControl,,ECPPct, 0
;GuiControl,,ECAdjDist, 0
;return

return
exitapp


NumpadDel:: Reload


