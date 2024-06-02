*** Settings ***
Suite Setup     log to console      opening browser
Suite Teardown    log to console    close all browsers
Test Setup    log to console    Login to application
Test Teardown    log to console     Logout from application

*** Test Cases ***
TC1 prepared recharge
    Log to console    test case1
TC2 postpaid recharge
    Log to console    test case2
TC3 search recharge
    Log to console    test case3
TC4 login
    Log to console    test case4