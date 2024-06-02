*** Settings ***
Library    SeleniumLibrary
Library    Browser

*** Variables ***
${url}  https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Testing Radio buttons and Check boxes

    Open browser    ${url}  chrome
    Sleep    5
    Input text    xpath://input[@name='firstname']      javan
    Input text    xpath://input[@name='lastname']     raja
    # selecting radio buttons
    Select radio button    sex  Male
    Sleep    5
    Select radio button    sex  Female
    #Sleep    2
    #Select radio button    exp  2
    #Sleep    3
    #Select radio button    exp  7
    Sleep    3
    #Select radio button    exp  4




*** Keywords ***
