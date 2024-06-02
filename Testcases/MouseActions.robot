*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://swisnl.github.io/jQuery-contextMenu/demo.html
${url1}     https://testautomationpractice.blogspot.com/

*** Test Cases ***
MouseActionTest
     #right click on elements by using open context menu
    SeleniumLibrary.Open browser    ${url}  chrome
    Maximize browser window
    SeleniumLibrary.Open context menu    //span[@class='context-menu-one btn btn-neutral']
    Sleep    3
    SeleniumLibrary.Click element    //span[text()='Edit']
    SeleniumLibrary.Alert should be present     clicked: edit

    #double click
    SeleniumLibrary.Open browser    ${url1}  chrome
    Maximize browser window
    SeleniumLibrary.Double click element    xpath://button[text()='Copy Text']
    Sleep    3

    # darg and drop actions
    SeleniumLibrary.Go to    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize browser window
    SeleniumLibrary.Drag and drop    id:box6    id:box107
    Sleep    3
    SeleniumLibrary.Drag and drop    id:box3    id:box103
    Sleep    3





*** Keywords ***
