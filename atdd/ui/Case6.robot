*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:8080/index.jsp
${BROWSER}    chrome

*** Test Cases ***
ผู้เล่น player 1 (x) ชนะตามแนวตั้งแถวที่ 3
    เปิดหน้าเว็บOX
    1. ผู้เล่นคนที่ 1 วาง mark x ช่อง R2_C2
    2. ผู้เล่นคนที่ 2 วาง mark o ช่อง R1_C2
    3. ผู้เล่นคนที่ 1 วาง mark x ช่อง R1_C3
    4. ผู้เล่นคนที่ 2 วาง mark o ช่อง R1_C1
    5. ผู้เล่นคนที่ 1 วาง mark x ช่อง R2_C3
    6. ผู้เล่นคนที่ 2 วาง mark o ช่อง R2_C1
    7. ผู้เล่นคนที่ 1 วาง mark x ช่อง R3_C3
    player1 แสดงผลว่า player1 มี 1 score

*** Keywords ***
เปิดหน้าเว็บOX
    Open Browser    ${URL}    ${BROWSER}
1. ผู้เล่นคนที่ 1 วาง mark x ช่อง R2_C2
    Click Element    id=R2_C2
    Wait Until Element Contains    id=R2_C2    X
2. ผู้เล่นคนที่ 2 วาง mark x ช่อง R1_C2
    Click Element    id=R1_C2
    Wait Until Element Contains    id=R1_C2    O
3. ผู้เล่นคนที่ 1 วาง mark x ช่อง R1_C3
    Click Element    id=R1_C3
    Wait Until Element Contains    id=R1_C3    X
4. ผู้เล่นคนที่ 2 วาง mark x ช่อง R1_C1
    Click Element    id=R1_C1
    Wait Until Element Contains    id=R1_C1    O
5. ผู้เล่นคนที่ 1 วาง mark x ช่อง R2_C3
    Click Element    id=R2_C3
    Wait Until Element Contains    id=R2_C3    X
6. ผู้เล่นคนที่ 2 วาง mark x ช่อง R2_C1
    Click Element    id=R2_C1
    Wait Until Element Contains    id=R2_C1    O
7. ผู้เล่นคนที่ 1 วาง mark x ช่อง R3_C3
    Click Element    id=R3_C3
    Wait Until Element Contains    id=R3_C3    X
player1 แสดงผลว่า player1 มี 1 score
    Wait Until Element Contains    id=player1Score    1    
ปิดหน้าเว็บ
    Close Browser

