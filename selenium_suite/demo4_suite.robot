*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path      C:\\Users\\Dell\\Downloads\\Internship\\automation\\robot_Project\\driver
    Open Browser    url=https://www.salesforce.com/in/form/signup/freetrial-sales/     browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    name=UserFirstName    jhon
    Input Text    name=UserLastName    wick
    Input Text    name=UserEmail    jhon@gmail.com
    Select From List By Label    name=UserTitle      IT Manager
    Input Text    name=CompanyName    LT
    Select From List By Value    name=CompanyEmployees      250
    Select From List By Label    name=CompanyCountry        United Kingdom
    Click Element    xpath=(//div[@class='checkbox-ui'])[1]
    Click Element    name=start my free trial
    Element Text Should Be    xpath=//span[contains(@id,'UserPhone')]    Enter a valid phone number
