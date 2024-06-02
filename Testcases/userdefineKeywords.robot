*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://parabank.parasoft.com/parabank/register.htm

*** Test Cases ***
TestScreenshot
    LaunchBrowser
    SeleniumLibrary.Input text    name:username     anand
    SeleniumLibrary.Input text    name:password     raw
    SeleniumLibrary.Click element    xpath://input[@class='button']
    SeleniumLibrary.Capture element screenshot    xpath://h1[@class='title']        Screenshots/error.png
    SeleniumLibrary.Capture page screenshot    Screenshots/pageerror.png

*** Keywords ***
#User defined Keywords without arguments
LaunchBrowser
    SeleniumLibrary.Open browser    ${url}  chrome
    Maximize browser window
