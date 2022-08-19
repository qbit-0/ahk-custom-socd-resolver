#SingleInstance, Force
#InstallKeybdhook
#usehook

F1::Suspend
F5::Reload

; Vertical Resolution
;; Neutral
; ~Space::
;     if(GetKeyState("w", "p"))
;         SendInput, {Space up}{w up}
; Return

; ~Space up::
;     if(GetKeyState("w", "p"))
;         SendInput, {w down}
; Return

; ~w::
;     if(GetKeyState("Space", "p"))
;         SendInput, {w up}{Space up}
; Return

; ~w up::
;     if(GetKeyState("Space", "p"))
;         SendInput, {Space down}
; Return

;; Absolute Priority
~Space::
    if (GetKeyState("w", "p"))
        SendInput, {w up}
Return

~Space up::
    if (GetKeyState("w", "p"))
        SendInput, {w down}
Return

~w::
    if(GetKeyState("Space", "p"))
        SendInput, {w up}
Return

; Horizontal Resolution
;; Neutral
~q::
    if(GetKeyState("e", "p"))
        SendInput, {q up}{e up}
Return

~q up::
    if(GetKeyState("e", "p"))
        SendInput, {e down}
Return

~e::
    if(GetKeyState("q", "p"))
        SendInput, {e up}{q up}
Return

~e up::
    if(GetKeyState("q", "p"))
        SendInput, {q down}
Return

