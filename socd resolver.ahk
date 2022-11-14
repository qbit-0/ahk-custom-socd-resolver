#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#SingleInstance, Force
#InstallKeybdhook
#UseHook

; X-AXIS *********************************************
;; SHARED
7 up::
a up::
If (GetKeyState("d", "P") Or GetKeyState("9", "P"))
    Send, {d down}
If (!GetKeyState("a", "P") And !GetKeyState("7", "P"))
    Send, {a up}
Return

9 up::
d up::
If (GetKeyState("a", "P") Or GetKeyState("7", "P"))
    Send, {a down}
If (!GetKeyState("d", "P") And !GetKeyState("9", "P"))
    Send, {d up}
Return

;; NEUTRAL
; 7::
; a::
;     If (GetKeyState("d", "P") Or GetKeyState("9", "P"))
;         Send, {a up} {d up}
;     Else
;         Send, {a down}
; Return

; 9::
; d::
;     If (GetKeyState("a", "P") Or GetKeyState("7", "P"))
;         Send, {d up} {a up}
;     Else
;         Send, {d down}
; Return

;; LAST INPUT PRIORITY
7::
a::
    If (GetKeyState("d", "P") Or GetKeyState("9", "P"))
        Send, {d up}
    Send, {a down}
Return

9::
d::
    If (GetKeyState("a", "P") Or GetKeyState("7", "P"))
        Send, {a up}
    Send, {d down}
Return

; Y-AXIS *********************************************
;; SHARED
Space up::
If (GetKeyState("s", "P") Or GetKeyState("8", "P"))
    Send, {s down}
Send, {Space up}
Return

8 up::
s up::
If (GetKeyState("Space", "P"))
    Send, {Space down}
If (!GetKeyState("s", "P") And !GetKeyState("8", "P"))
    Send, {s up}
Return

;; NEUTRAL
; Space::
;     If (GetKeyState("s", "P") Or GetKeyState("8", "P"))
;         Send, {Space up} {s up}
;     Else
;         Send, {Space down}
; Return

; 8::
; s::
;     If (GetKeyState("Space", "P"))
;         Send, {s up} {Space up}
;     Else
;         Send, {s down}
; Return

;; ABSOLUTE PRIORITY
Space::
    If (GetKeyState("s", "P") Or GetKeyState("8", "P"))
        Send, {s up}
    Send, {Space down}
Return

8::
s::
    If (!GetKeyState("Space", "P"))
        Send, {s down}
Return