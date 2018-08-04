*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:8080/TestRobot/index.jsp
${BROWSER}    chrome

*** Test Cases ***
Player 1 (x) ชนะเเนวนอนเเถว 1
    เปิดหน้าเว็ปเกมส์ OX
    ผู้เล่นคนที่ 1 วาง mark x ช่อง R2_C2
    ผู้เล่นคนที่ 2 วาง mark o ช่อง R2_C1
    ผู้เล่นคนที่ 1 วาง mark x ช่อง R1_C2
    ผู้เล่นคนที่ 2 วาง mark o ช่อง R3_C2
    ผู้เล่นคนที่ 1 วาง mark x ช่อง R1_C3
    ผู้เล่นคนที่ 2 วาง mark o ช่อง R3_C1
    ผู้เล่นคนที่ 1 วาง mark x ช่อง R1_C1
    เเสดงผล player1 เป็น 1 score 

*** Keywords ***
เปิดหน้าเว็ปเกมส์ OX
    Open Browser    ${URL}    ${BROWSER}

ผู้เล่นคนที่ 1 วาง mark x ช่อง R2_C2
    Click Element    id=R2_C2
    Wait Until Elemment Contains    id=R2_C2    X
ผู้เล่นคนที่ 2 วาง mark o ช่อง R2_C1
    Click Element    id=R2_C1
    Wait Until Elemment Contains    id=R2_C1    O
ผู้เล่นคนที่ 1 วาง mark x ช่อง R1_C2
    Click Element    id=R1_C2
    Wait Until Elemment Contains    id=R1_C2    X
ผู้เล่นคนที่ 2 วาง mark o ช่อง R3_C2
    Click Element    id=R3_C2
    Wait Until Elemment Contains    id=R3_C2    O
ผู้เล่นคนที่ 1 วาง mark x ช่อง R1_C3
    Click Element    id=R1_C3
    Wait Until Elemment Contains    id=R1_C3    X
ผู้เล่นคนที่ 2 วาง mark o ช่อง R3_C1
    Click Element    id=R3_C1
    Wait Until Elemment Contains    id=R3_C1    O
ผู้เล่นคนที่ 1 วาง mark x ช่อง R1_C1   
    Click Element    id=R1_C1
    Wait Until Elemment Contains    id=R1_C1    X
เเสดงผล player1 เป็น 1 score 
    Wait Until Elemment Contains    id=playerScore    1

ปิดหน้าเว็ป
    Close Browser
