*** Settings ***
Documentation     An example executing a loop only two times.

*** Variables ***
@{ROBOTS}=        Bender    Johnny5    Terminator Arska    Robocop

*** Tasks ***
Execute a loop only two times
    ${index}=    Set Variable    1
    FOR    ${robot}    IN    @{ROBOTS}
        Exit For Loop If    ${index} > 2
        Log    ${robot}
        ${index}=    Evaluate    ${index} + 1
    END