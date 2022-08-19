#NoEnv ; Recommended for perfOrmance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWOrkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#SingleInstance, Force
#InstallKeybdhook
#UseHook

; X-AXIS *********************************************
;; SHARED
7 up::
q up::
    If (GetKeyState("e", "P") Or GetKeyState("9", "P"))
        Send, {e down}
    If (!GetKeyState("q", "P") And !GetKeyState("7", "P"))
        Send, {q up}
Return

9 up::
e up::
    If (GetKeyState("q", "P") Or GetKeyState("7", "P"))
        Send, {q down}
    If (!GetKeyState("e", "P") And !GetKeyState("9", "P"))
        Send, {e up}
Return

;; NEUTRAL
; 7::
; q::
;     If (GetKeyState("e", "P") Or GetKeyState("9", "P"))
;         Send, {q up} {e up}
;     Else
;         Send, {q down}
; Return

; 9::
; e::
;     If (GetKeyState("q", "P") Or GetKeyState("7", "P"))
;         Send, {e up} {q up}
;     Else
;         Send, {e down}
; Return

;; LAST INPUT PRIORITY
7::
q::
    If (GetKeyState("e", "P") Or GetKeyState("9", "P"))
        Send, {e up}
    Send, {q down}
Return

9::
e::
    If (GetKeyState("q", "P") Or GetKeyState("7", "P"))
        Send, {q up}
    Send, {e down}
Return

; Y-AXIS *********************************************
;; SHARED
Space up::
    If (GetKeyState("w", "P") Or GetKeyState("8", "P"))
        Send, {w down}
    Send, {Space up}
Return

8 up::
w up::
    If (GetKeyState("Space", "P"))
        Send, {Space down}
    If (!GetKeyState("w", "P") And !GetKeyState("8", "P"))
        Send, {w up}
Return

;; NEUTRAL
; Space::
;     If (GetKeyState("w", "P") Or GetKeyState("8", "P"))
;         Send, {Space up} {w up}
;     Else
;         Send, {Space down}
; Return

; 8::
; w::
;     If (GetKeyState("Space", "P"))
;         Send, {w up} {Space up}
;     Else
;         Send, {w down}
; Return

;; ABSOLUTE PRIORITY
Space::
    If (GetKeyState("w", "P") Or GetKeyState("8", "P"))
        Send, {w up}
    Send, {Space down}
Return

8::
w::
    If (!GetKeyState("Space", "P"))
        Send, {w down}
Return