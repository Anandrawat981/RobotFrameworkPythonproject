*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      headlesschrome

*** Keywords ***
openMyBrowser
    SeleniumLibrary.Open browser    ${url}      ${browser}
    Maximize browser window

closeMyBrowsers
    Close all browsers

OpenLoginPage
    SeleniumLibrary.Go to    ${url}

InputUserName
    [Arguments]    ${username}
    SeleniumLibrary.Input text    id:Email      ${username}

Inputpwd
    [Arguments]    ${password}
    SeleniumLibrary.Input text    id:Password   ${password}

ClickLoginButton
    SeleniumLibrary.Click element    xpath://button[text()='Log in']

ClickLogotLink
    SeleniumLibrary.Click link    xpath://a[text()='Logout']

ValidateErrorMessageLoginFailed
    SeleniumLibrary.Page should contain    Login was unsuccessful

ValidateLoginSuccess
    SeleniumLibrary.Page should contain    Dashboard

