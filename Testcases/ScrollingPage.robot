*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.cgi.com/india/en

*** Test Cases ***
ScrollingPageTest
    SeleniumLibrary.Open browser    ${url}  chrome
    Sleep    2
    Maximize browser window
    Sleep    3
    #Execute javascript    window.scrollTo(0,2500)
    #Scroll element into view    xpath://a[text()='Media center']
    #to end of the page
    Execute javascript    window.scrollTo(0,document.body.scrollHeight)
    Sleep    3
    #to end starting of the page
    Execute javascript    window.scrollTo(0,-document.body.scrollHeight)
