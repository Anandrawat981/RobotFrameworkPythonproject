*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${url}  https://parabank.parasoft.com/parabank/register.htm
${browser}  chrome

*** Test Cases ***
userdefinedKeywords
    ${pageTitle}=    LaunchBrowser   ${url}   ${browser}
    Log to console   ${pageTitle}
    Log   ${pageTitle}
    SeleniumLibrary.Input text    name:username     anand
    SeleniumLibrary.Input text    name:password     raw
    SeleniumLibrary.Click element    xpath://input[@class='button']
    SeleniumLibrary.Capture element screenshot    xpath://h1[@class='title']        Screenshots/error.png
    SeleniumLibrary.Capture page screenshot    Screenshots/pageerror.png


