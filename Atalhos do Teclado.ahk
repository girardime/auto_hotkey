#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

CapsLock & ,:: Send {Del}
CapsLock & `;:: Send {PgUp}
CapsLock & ':: Send {PgDn}
CapsLock & [:: Send {PrintScreen}
CapsLock & ]:: Send {Pause}
CapsLock & .::
If GetKeyState("Shift") && GetKeyState("LCtrl")
	Send ^+{End}
Else
If GetKeyState("Shift")
	Send +{End}
Else
If GetKeyState("LCtrl")
	Send ^{End}
Else
	Send {End}
Return
CapsLock & k:: Send {Ins}
CapsLock & l::
If GetKeyState("Shift") && GetKeyState("LCtrl")
	Send ^+{Home}
Else
If GetKeyState("Shift")
	Send +{Home}
Else
If GetKeyState("LCtrl")
	Send ^{Home}
Else
	Send {Home}
Return

; Functions
CapsLock & 1::Send {F1}
CapsLock & 2::Send {F2}
CapsLock & 3::Send {F3}
CapsLock & 4::
If GetKeyState("LAlt")
	WinClose A
Else
If GetKeyState("Control") & GetKeyState("LWin")
	Send ^#{F4}
Else
	Send {F4}
Return
CapsLock & 5::Send {F5}
CapsLock & 6::Send {F6}
CapsLock & 7::Send {F7}
CapsLock & 8::Send {F8}
CapsLock & 9::Send {F9}
CapsLock & 0::Send {F10}
CapsLock & -::Send {F11}
CapsLock & =::Send {F12}

CapsLock & Escape::
If GetKeyState("Shift")
	Send {~}
Else
	Send {``}
Return

; Arrow Up
Capslock & /::
If GetKeyState("Shift")
	Send +{Up}
Else
If GetKeyState("LCtrl")
	Send ^{Up}
Else
	Send {Up}
Return

; Arrow Left
Capslock & RAlt::
If GetKeyState("Shift") && GetKeyState("Control")
	Send +^{Left}
Else
If GetKeyState("LAlt")
	SendEvent !{Left}
Else
If GetKeyState("Shift")
	Send +{Left}
Else
If GetKeyState("Control")
	Send ^{Left}
Else
	Send {Left}	
Return

; Arrow Down
Capslock & AppsKey::
If GetKeyState("Shift")
	Send +{Down}
Else
If GetKeyState("LCtrl")
	Send ^{Down}
Else
	Send {Down}
Return

; Arrow Right
Capslock & RControl::
If GetKeyState("Shift") && GetKeyState("Control")
	Send +^{Right}
Else
If GetKeyState("LAlt")
	SendEvent !{Right}
Else
If GetKeyState("Shift")
	Send +{Right}
Else
If GetKeyState("Control")
	Send ^{Right}
Else
	Send {Right}
Return

; Custom
LAlt & 4:: WinClose A

; WORKPACE
LWin & /:: SendEvent #{Up}
LWin & AppsKey:: SendEvent #{Down}

LWin & RCtrl:: 
If GetKeyState("LCtrl")
	Send #^{Right}
Else
	SendEvent #{Right}
Return

LWin & RAlt:: 
If GetKeyState("LCtrl")
	Send #^{Left}
Else
	SendEvent #{Left}
Return

LWin & 4::
If GetKeyState("LCtrl")
	SendEvent ^#{F4}
Return

LAlt & t::
If GetKeyState("LCtrl")
	Run C:\Users\victo\AppData\Local\Microsoft\WindowsApps\wt.exe
Return

; Volume
CapsLock & c::Send {Volume_Up}
CapsLock & x::Send {Volume_Down}
CapsLock & z::Send {Volume_Mute}
CapsLock & v::Send {Media_Play_Pause}
