#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#NoTrayIcon ; не показывать иконку в трее
$Form1 = GUICreate("Администирование процессов", 228, 137, 338, 320)
$Button1 = GUICtrlCreateButton("Включить", 80, 56, 75, 25)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$Label1 = GUICtrlCreateLabel("SimpleTriggerBot", 32, 16, 166, 28)
GUICtrlSetFont(-1, 14, 800, 0, "MS Sans Serif")
$Combo1 = GUICtrlCreateCombo("Бинды управления", 48, 96, 145, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Хоткеи|F9 - Pause|F10 - NotPause|F11 - Exit")
GUICtrlSetBkColor(-1, 0xFFFFFF)
GUISetState(@SW_SHOW)



HotKeySet ("{F9}","_Pause" )
HotKeySet ("{F10}","_NotPause")
HotKeySet("{F11}", "_Exit")
Global $Paused
Func _Pause()
$Paused = True
While $Paused
WEnd
EndFunc
Func _NotPause()
$Paused = False
EndFunc
While 1
$Variable = PixelSearch(940,525,975,555,0xC14F4F)
If IsArray($Variable) = True Then
MouseClick("LEFT")
EndIf
WEnd
Func _Exit()
Exit
EndFunc