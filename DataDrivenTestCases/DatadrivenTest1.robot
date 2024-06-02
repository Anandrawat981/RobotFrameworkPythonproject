*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resource.robot
Suite Setup    openMyBrowser
Suite Teardown    closeMyBrowsers
Test Template    Invalid login

*** Test Cases ***          username                    password
Correct user empty pass     admin@yourstore.com     ${EMPTY}
Correct user wrong pass     admin@yourstore.com     xyxzx
Wrong user right pass     ad@yourstore.com     admin
Wrong user empty pass     axyz@yourstore.com     ${EMPTY}
Wrong user wrong pass     anan@yourstore.com     xyxzx123456
Wrong user wrong pass     anan@yourstore.com     123456

*** Keywords ***
Invalid login
    [Arguments]    ${username}   ${password}
    InputUserName    ${username}
    Inputpwd    ${password}
    ClickLoginButton
    ValidateErrorMessageLoginFailed
