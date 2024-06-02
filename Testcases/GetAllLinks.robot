*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetAllLinkTest
    SeleniumLibrary.Open browser    https://parabank.parasoft.com/parabank/register.htm     chrome
    Maximize browser window
    ${Alllinkscount}=   Get element count    xpath://a
    Log to console    ${Alllinkscount}

    FOR     ${i}    IN RANGE    1   ${Alllinkscount}
    ${linkText}=    Get text    xpath:(//a)[${i}]
    Log to console    ${linkText}
    END


