*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      C:\\Users\\Dell\\Downloads\\Internship\\automation\\robot_Project\\driver
    Open Browser    url=https://www.facebook.com/     browser=chrome
    Input Text    id=email    prad@gmail.com
    Input Text    id=pass    abc123
    Click Element    name=login