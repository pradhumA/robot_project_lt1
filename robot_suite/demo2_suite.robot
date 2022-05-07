*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Create Dictionary   path=D:\\Users\\Demo1

TC2
    Create File     D:\\Users\\hello.txt
    ${files}    List Files In Directory    path=D:\\Users
    Log To Console    ${files}

TC3
    @{files}    List Files In Directory    path=D:\\Users
    Log To Console    ${files}
    Log     ${files}
    Log     ${files}[0]
    ${count}    Get Length    ${files}
    Log     ${count}
    FOR    ${i}    IN RANGE    0    ${count}    1
        Log    ${files}[${i}]

    END