*** Settings ***
Library    OperatingSystem

*** Test Cases ***
TC1
    Create Dictionary   path=D:\\Users\\Demo1

TC2
    Create File     D:\\Users\\hello.txt
    ${files}    List Files In Directory    path=D:\\Users
    Log To Console    ${files}