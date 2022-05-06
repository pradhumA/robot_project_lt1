*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      C:\\Users\\Dell\\Downloads\\Internship\\automation\\robot_Project\\driver
    Open Browser    url=https://www.facebook.com/     browser=chrome
    Maximize Browser Window
    Click Element    link=Create New Account
    #Sleep    5s
    Set Selenium Implicit Wait    30s
    Input Text    name=firstname    prem
    Input Text    name=lastname    kumar
    Input Text    name=reg_email__    premkr12@gmail.com
    Input Text    name=reg_email_confirmation__    premkr12@gmail.com
    Input Text    id=password_step_input    prem123
    Select From List By Label    name=birthday_day     20
    Select From List By Label    name=birthday_month       Dec
    Select From List By Label    name=birthday_year     2000
    #Select Radio Button    sex    2
    Click Element    xpath=//input[@value='2']
    Click Element    name=websubmit
    Close Browser