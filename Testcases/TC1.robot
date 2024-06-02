*** Settings ***
Library    SeleniumLibrary
Library    Browser

*** variables ***
${url}  https://parabank.parasoft.com/parabank/index.html

*** Test Cases ***
LoginTest

    Open browser    ${url}      chrome
    Input text    name:username     anand
    Input text    name:password     rawat
    Click element    xpath://input[@type='submit']

*** Keywords ***