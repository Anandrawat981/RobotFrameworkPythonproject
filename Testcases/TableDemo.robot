*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableDemoTest
    SeleniumLibrary.Open browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize browser window
    ${rows}=    Get element count    xpath://table[@name='BookTable']/tbody/tr
    ${cols}=    Get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    Log to console    ${rows}
    Log to console    ${cols}
    Table column should contain    xpath://table[@name='BookTable']     3   Subject
    Table row should contain    xpath://table[@name='BookTable']     6   Master In Java
    Table cell should contain   xpath://table[@name='BookTable']    6   2   Amod
    Table header should contain    xpath://table[@name='BookTable']     BookName




