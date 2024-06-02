*** Settings ***
Library    SeleniumLibrary
Library    Browser


*** Variables ***
${url}  https://savvycalculator.com/date-percentage-calculator/
*** Test Cases ***
calenderTest

    Open browser    ${url}  chrome
    GetEntrytitle
    Close browser

*** Keywords ***
getEntrytitle
    Maximize browser window
    Get text    xpath://h1[@class='entry-title']