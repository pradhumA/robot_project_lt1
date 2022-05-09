*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=pradhumkumarmand_rtZNXx
    ...     browserstack.key=pDNzBDTWVrgjEAbK4yQS
    ...     app=bs://31465451184ff17bf7b38f207e2fefd77756e2a1
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    #Set Appium Timeout     30s
    
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']  30s
    Click Element    xpath=//*[@text='Dismiss'] 
    
    Wait Until Page Contains Element    xpath=//*[@text='Sign in']      30s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']      30s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[@text='Enter an e-mail address or username']      50s
    Input Text    xpath=//*[(@text='Enter an e-mail address or username')]    hello@gmail.com
    Input Password    xpath=//*[@text='Password']    welcome
    Click Element    xpath=(//*[@text='Sign in'])[2]

    Element Text Should Be    xpath=//*[contains(@text='issue')]    There was an issue signing in


    Close Application