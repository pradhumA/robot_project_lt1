*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem


*** Test Cases ***
TC1
    Append To Environment Variable    path      C:\\Users\\Dell\\Downloads\\Internship\\automation\\robot_Project\\driver
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin

    #Input Password    css=#clearPass    pass

    Input Password    id=clearPass    password=pass
    Select From List By Value   name=languageChoice    18

    Click Element    id=login-button
    Click Element    xpath=//div[text()='Messages']
    Select Frame    xpath=//iframe[@name='msg']
    Click Element    partial link=Add New
    Select From List By Label    id=form_note_type      Pharmacy
    Select From List By Label    id=form_message_status     New
    Select From List By Index       id=users     1
    Input Text    id=note    Hello
    Click Element    id=newnote
    Element Text Should Be    id=error_reply_to    Please choose a patient
    Unselect Frame
    Close Browser