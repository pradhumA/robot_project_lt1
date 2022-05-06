*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      C:\\Users\\Dell\\Downloads\\Internship\\automation\\robot_Project\\driver
    Open Browser    url=https://www.goto.com/meeting/     browser=chrome
    Maximize Browser Window
    Click Element    id=truste-consent-button
    Click Element    link=Try Free
    Set Selenium Implicit Wait    30s
    Input Text    id=first-name    John
    Input Text    id=last-name    wick
    Input Text    id=login__email    john@gmail.com
    Input Text    id=contact-number    898988
    Input Text    id=login__password    jhon1234
    Select From List By Label    id=CompanySize     10 - 99
    Click Element    xpath=//button[text()='Start My Trial']
    #Click Element    xpath=//button[@data-button='trail-submit']
