*** Settings ***
Library    DateTime

*** Test Cases ***
TC1
   Log To Console    Hello Everyone
   Log To Console    pradhum

TC2
    ${base}  Set Variable  25
    ${height}  Set variable  1
    Log To Console    ${base}
    ${result}  Evaluate    (${base}*${height})/2
    Log To Console    ${result}

TC3
    ${base1}    Set Variable    25
    ${base2}    Set Variable    2.56
    ${height}    Set Variable    70
    ${res}  Evaluate    (${base1}*${base2})*${height}/2
    Log To Console    ${res}

TC4
    ${date}     Get Current Date
    Log To Console    ${date}