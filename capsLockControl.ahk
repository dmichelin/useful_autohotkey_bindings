; This script remaps the QWE,ASD,ZXC cluster plus caps lock to media keys 
SetCapsLockState, AlwaysOff
; Maps QWE to media keys
CapsLock & q::Media_Prev
CapsLock & w::Media_Play_Pause
CapsLock & e::Media_Next
; Maps ASD to volume controls
CapsLock & a::Volume_Down
CapsLock & s::Volume_Mute
CapsLock & d::Volume_Up
; Maps Z to opening the current directory in ConEmu
; Taken from https://lifehacker.com/5306401/open-a-new-command-prompt-from-explorer-with-a-hotkey
#ifWinActive ahk_class CabinetWClass ; for use in explorer.
CapsLock & z::
ClipSaved := ClipboardAll
Send !d
Sleep 10
Send ^c
Run, C:\Program Files\ConEmu\ConEmu64.exe cmd.exe -new_console:d:"%clipboard%"
Clipboard := ClipSaved
ClipSaved =
return
#IfWinActive
; Taken from https://gist.github.com/Danik/5808330
; Make Win Key + Capslock work like Capslock
#Capslock::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return
