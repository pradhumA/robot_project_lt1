*** Settings ***
Library     AppiumLibrary
Test Teardown   Close Application

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

    Wait Until Page Contains Element    xpath=//*[@content-desc='Settings']  30s
    Click Element    xpath=//*[@content-desc='Settings']

