*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
forloopone
    FOR    ${i}    IN RANGE    1    10
    Log to console    ${i}
    END
forloopTwo
    FOR     ${j}    IN    1 2 3 4 5 6 7 8
    Log to console    ${j}
    END
forloopThree
    @{items}    Create list    9    8   7   6   5   4   3
    FOR     ${k}    IN  @{items}
    Log to console    ${k}
    END
forloopfour
    FOR     ${h}    IN  Anand rawat ragini Anu
    Log to console    ${h}
    END
forloopfive
    @{nameitems}    Create list     Ram Sita Hanu Krishna Radha
    FOR     ${k}    IN  @{nameitems}
    Log to console    ${k}
    END
forloopsix
    @{items}    Create list    9    8   7   6   5   4   3
    FOR     ${l}    IN  @{items}
    Log to console    ${l}
    Exit for loop if    ${l}==6
    END