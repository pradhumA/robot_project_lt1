*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      C:\\Users\\Dell\\Downloads\\Internship\\automation\\robot_Project\\driver
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element    link=phpMyAdmin »
    Switch Window   phpMyAdmin
    Input Text    id=input_username    admin
    Input Password    id=input_password    admin123
    Click Element    id=input_go
    #Element Text Should Be    xpath=(//div[contains(@class,'alert alert-danger')])[3]     Error 1045: Access denied for user. Additional error information may be available, but is being hidden by the
    Element should Contain    xpath=(//div[@role='alert'])[3]     Access denied for user
    Close Window
    Close Browser