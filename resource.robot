** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}  http://localhost:7272
${USERNAME}=    demo
${PASSWORD}=    mode

*** Keywords ***
Open Browser To Login Page
        Open Browser    ${URL}  browser=chrome

Enter Username
        [Arguments]             ${username}
        Input Text              id:username_field       ${username}

Enter Password
        [Arguments]             ${password}
        Input Password  id:password_field       ${password}

Submit Login Form
        Click Button    id:login_button
