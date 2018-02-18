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

; Taken from https://gist.github.com/Danik/5808330
; Make Win Key + Capslock work like Capslock
#Capslock::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return
