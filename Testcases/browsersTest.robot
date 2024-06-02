*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
Test browsers
    SeleniumLibrary.Open browser    https://letcode.in/windows  chrome  alias=chromeRCV
    Maximize browser window
    SeleniumLibrary.Open browser    about:blank     ff  alias=fireRCV
    SeleniumLibrary.Open browser    https://www.cgi.com/en      edge    alias=edgeRCV
    ${aliases}  Get browser aliases
    Log to console    ${aliases}
    Log to console    ${aliases}[fireRCV]
    ${ids}  Get browser ids
    Log to console   ${ids}
    #SeleniumLibrary.Switch browser  ${ids}[2]
    Switch browser    ${ids}[2]
    Go to    https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#library-documentation-top
    SeleniumLibrary.Close all browsers

*** Keywords ***
