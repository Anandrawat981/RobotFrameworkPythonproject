*** Settings ***
Suite Setup     log to console      opening browser
Suite Teardown    log to console    close all browsers
Test Setup    log to console    Login to application
Test Teardown    log to console     Logout from application

*** Test Cases ***
TC1 prepared recharge
    [Tags]    smoke
    Log to console    test case1
TC2 postpaid recharge
    [Tags]    regression
    Log to console    test case2
TC3 search recharge
    [Tags]  smoke
    Log to console    test case3
TC4 login
    [Tags]  regression
    Log to console    test case4