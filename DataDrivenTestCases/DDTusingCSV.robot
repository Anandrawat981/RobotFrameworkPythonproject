*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resource.robot
Library    DataDriver   ../TestData/logintestdata.csv
Suite Setup    openMyBrowser
Suite Teardown  closeMyBrowsers
Test Template    invalidTestloginFailed

*** Test Cases ***
LoginTestUsingcsv using   ${username}    and     ${password}

*** Keywords ***
invalidTestloginFailed
    [Arguments]    ${username}  ${password}
    InputUserName   ${username}
    Inputpwd    ${password}
    ClickLoginButton
    ValidateErrorMessageLoginFailed