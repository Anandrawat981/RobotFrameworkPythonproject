*** Settings ***
Library    SeleniumLibrary
Library    Browser

*** Variables ***
${url}  https://demo.seleniumeasy.com/javascript-alert-box-demo.html

*** Test Cases ***
Testing alert Test

    Open browser    ${url}  ff
    Maximize browser window
    Click element    xpath://button[@class='btn btn-default']
    Sleep    3
    Alert should be present    I am an alert box!
    #Handle alert    ACCEPT
    Click element    xpath:(//button[@class='btn btn-default btn-lg'])[1]
    Sleep    3
    Alert should be present    Press a button!
    Sleep    3
    #Handle alert    DISMISS
    Click element    xpath:(//button[@class='btn btn-default btn-lg'])[2]
    Sleep    5
    Input text into alert       Testanand
    Sleep    5




    Close browser






*** Keywords ***
