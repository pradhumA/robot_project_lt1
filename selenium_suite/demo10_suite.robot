*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem


*** Test Cases ***
TC1
    Append To Environment Variable    path      C:\\Users\\Dell\\Downloads\\Internship\\automation\\robot_Project\\driver
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://smallpdf.com/pdf-to-word
    Click Element    xpath=//span[text()='Got it']
    Choose File    xpath=//input[@type='file']    C:\\Users\\Dell\\Downloads\\pradhumTicket.pdf
    #\\-> ${/}
    ${current_title}    Get Title
    Log To Console    ${current_title}
    ${html_source}  Get Source