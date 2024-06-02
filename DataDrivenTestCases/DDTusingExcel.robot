*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resource.robot
Library    DataDriver   ../TestData/logintestdata.xlsx  sheet_name=Sheet1
Suite Setup    openMyBrowser
Suite Teardown  closeMyBrowsers
Test Template    invalidTestloginFailed

*** Test Cases ***
LoginTestUsingExcel using   ${username}     ${password}

*** Keywords ***
invalidTestloginFailed
    [Arguments]    ${username}  ${password}
    InputUserName   ${username}
    Inputpwd    ${password}
    ClickLoginButton
    ValidateErrorMessageLoginFailed