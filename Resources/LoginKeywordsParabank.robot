*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***
OpenMyBrowser
    [Arguments]     ${url}      ${browser}
    SeleniumLibrary.Open browser    ${url}      ${browser}
    Maximize browser window

EnterUsername
    [Arguments]    ${username}
    SeleniumLibrary.Input text    ${txt_loginUserName}      ${username}

EnterPassword
    [Arguments]    ${password}
    SeleniumLibrary.Input text    ${txt_loginPassword}      ${password}

ClickLogin
    SeleniumLibrary.Click button    ${button_loginIN}

VerifyLoginfailed
    SeleniumLibrary.Title should be    ParaBank | Error