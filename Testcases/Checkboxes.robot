*** Settings ***
Library    SeleniumLibrary
Library    Browser

*** Variables ***
${url}  https://demo.seleniumeasy.com/basic-checkbox-demo.html

*** Test Cases ***
Testing Radio buttons and Check boxes

    Open browser    ${url}  ff
    Maximize browser window
    Sleep    5
    Select checkbox    id:isAgeSelected
    Select checkbox    xpath:(//input[@type='checkbox'])[5]
    Select checkbox    xpath:(//input[@type='checkbox'])[6]
    Select checkbox    xpath:(//input[@type='checkbox'])[7]
    Select checkbox    xpath:(//input[@type='checkbox'])[4]
    Select checkbox    xpath:(//input[@type='checkbox'])[6]
    Unselect checkbox    xpath:(//input[@type='checkbox'])[7]







*** Keywords ***
