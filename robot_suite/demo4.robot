*** Settings ***
Library     SeleniumLibrary
Library    Collections

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
    Append To List      ${fruits}   pineapple
    Log To Console    ${fruits}
    Remove From List    ${fruits}    0
    Log To Console    ${fruits}
    Insert Into List    ${fruits}      0    mango
    Log To Console    ${fruits}

TC5
    @{fruits}   Create List     apple   grapes  orage   mango
    FOR    ${fruit}    IN    @{fruits}
        Log    ${fruit}

    END

