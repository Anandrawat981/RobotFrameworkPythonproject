*** Settings ***
Library    SeleniumLibrary
Library    Browser

*** Variables ***
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Testing waits
    ${speed}    Get selenium speed
    Log to console  ${speed}
    Open browser    ${url}  ff
    Maximize browser window
    Set selenium speed    2
    Select radio button    Gender      M
    Select radio button    Gender    F
    Input text    name:FirstName    Ram
    Input text    id:LastName   singh
    Input text    id:Email      ramsingh12345678@gmail.com
    Input text    id:Password   ramsingh1234
    Input text    id:ConfirmPassword    ramsingh1234
    Click element    id:register-button
    #Element text should be    //div[@class='result']    Your registration completed
    Close browser
    ${speed}    Get selenium speed
    Log to console  ${speed}




*** Keywords ***
