*** Settings ***
Library    SeleniumLibrary
Library    Browser

*** Variables ***
${url}  https://parabank.parasoft.com/parabank/register.htm

*** Test Cases ***
TestingInputloginpage
    Open browser    ${url}      chrome
    Maximize browser window
    Title should be    ParaBank | Register for Free Online Account Access
    ${"Username"}   Set variable    name:username
    Element should be enabled   ${"Username"}
    Element should be visible   ${"Username"}
    Input text    ${"Username"}     Admin
    ${"Password"}   Set variable    name:password
    Element should be enabled   ${"Password"}
    Element should be visible   ${"Password"}
    Input text    ${"Password"}     passwordamin
    Clear element text  ${"Password"}
    Sleep    5
    Input text    ${"Password"}     admin
    ${"Login in"}   Set variable    xpath://input[@type='submit']
    Element should be enabled   ${"Login in"}
    Element should be visible   ${"Login in"}
    Click element   ${"Login in"}
    Get text    xpath://div[@id='rightPanel']/h1


*** Keywords ***
