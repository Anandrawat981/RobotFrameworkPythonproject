*** Settings ***
Library     SeleniumLibrary
Library     Browser
Library    SeleniumLibrary
Library    Browser


*** Variables ***
${url1}  https://letcode.in/windows
${url2}     https://demo.seleniumeasy.com/javascript-alert-box-demo.html



*** Test Cases ***
Testing Naviagation

    SeleniumLibrary.Open browser    ${url1}  chrome  alias=chromeRCV
    Maximize browser window
    ${loc}=     Get location
    Log to console   ${loc}
    SeleniumLibrary.Go to   ${url2}
    Sleep    3
    ${loc}=     Get location
    Log to console    ${loc}
    SeleniumLibrary.Go back
    Sleep    3
    ${loc}=     Get location
    Log to console    ${loc}
    SeleniumLibrary.Reload page











*** Keywords ***
