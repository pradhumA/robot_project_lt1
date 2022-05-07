*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Variables ***
&{MY_DETAILS}   name=bala   role=trainer    location=chn

*** Test Cases ***
TC1
    Log To Console    ${MY_DETAILS}[name]
    Log To Console    ${MY_DETAILS}[role]

