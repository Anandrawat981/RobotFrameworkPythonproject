*** Settings ***
Library    SeleniumLibrary
Library    Browser

*** Variables ***
${url}  https://demo.seleniumeasy.com/basic-select-dropdown-demo.html

*** Test Cases ***
Testing Radio buttons and Check boxes

    Open browser    ${url}  ff
    Maximize browser window
    Sleep    5
    #Select from list by index
    #Select from list by label
    #Select from list by value
    Select from list by label    id:select-demo     Friday
    Select from list by value    id:select-demo     Tuesday
    Select from list by index    id:select-demo     4
    #mutiple select from list box


*** Keywords ***
