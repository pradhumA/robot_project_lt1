*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      C:\\Users\\Dell\\Downloads\\Internship\\automation\\robot_Project\\driver
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/
    Click Element    id=wzrk-cancel
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Input Text    id=getInTouchName    Balaji
    Input Text    id=getInTouchEmail    Balaji123@gmail.com
    Input Text    id=getInTouchMobile    12345
    Input Text    id=getInTouchDesignation    Trainer
    Input Text    id=getInTouchEmpCount    40
    Click Element    xpath=//button[@class='btn-primary mt-10 w-full']
    Element Text Should Be    xpath=//div[contains(@class,'text-red-600')]    Mobile Number should be 10 digits