*** Settings ***
Library     SeleniumLibrary
Library     Browser

*** Variables ***
${url}  https://letcode.in/frame
${innerframe}   //iframe[@class='has-background-white']

*** Test Cases ***
Testing frame Test

    Open browser    ${url}  ff
    Maximize browser window
    Select frame    firstFr
    Input text    name:fname      Anand
    Input text    name:lname      rawat
    Unselect frame
    Select frame    has-background-white
    Input text    name:email

    Close browser






*** Keywords ***
