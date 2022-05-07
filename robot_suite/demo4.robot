*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${MY_NAME}  Balaji Dinakaran
${ROLE}     Trainer
@{COLORS}   red     green       yellow

*** Test Cases ***
TC1
    Log To Console    ${MY_NAME}
    
TC2
    Log To Console    ${MY_NAME}
    Log To Console    ${ROLE}
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]
    
TC3
    @{fruits}   Create List     apple   grapes  orage
    Log To Console    ${fruits}[1]
