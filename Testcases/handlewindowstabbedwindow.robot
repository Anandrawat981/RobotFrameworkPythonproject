*** Settings ***
Library     SeleniumLibrary
Library     Browser

*** Variables ***
${url}  https://letcode.in/windows



*** Test Cases ***
Testing windows Test

    Open browser    ${url}  ff
    Maximize browser window
    Click element    id:home
    ${windows}=     Get window handles
    Switch window    ${windows}[0]
    Switch window    ${windows}[1]
    Sleep    2
    Click element    xpath://a[text()='Click']
    Sleep    2
    Switch window    ${windows}[0]









*** Keywords ***
