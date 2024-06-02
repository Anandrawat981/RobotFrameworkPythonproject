*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
#User defined Keywords with arguments
LaunchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
    SeleniumLibrary.Open browser    ${appurl}  ${appbrowser}
    Maximize browser window
    ${title}=    SeleniumLibrary.Get title
    [Return]    ${title}