*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywordsParabank.robot

*** Variables ***
${url}      https://parabank.parasoft.com/parabank/register.htm
${browser}      chrome
${user}     TestTest
${pwd}      123456

*** Test Cases ***
ParabankLoginTest
    OpenMyBrowser   ${url}  ${browser}
    EnterUsername       ${user}
    EnterPassword       ${pwd}
    ClickLogin
    VerifyLoginfailed
