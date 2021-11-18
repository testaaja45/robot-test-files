*** Settings ***
Library         SeleniumLibrary
Resource    resource.robot
Suite Setup  Open Browser To Login Page
Test Setup  Verify That The Login Page Visible
Suite Teardown   Close Browser
Test Template   Template Error Page Is Visible When Using Incorrect Credentials



*** Keywords ***

Verify That Error Page Is Visible
        Page Should Contain             Error Page
        Location Should Be    ${URL}/error.html
    Title Should Be    Error Page

Template Error Page Is Visible When Using Incorrect Credentials
    [Arguments]     ${username}     ${password}
        Enter Username  ${EMPTY}
        Enter Password  ${SPACE*2}
        Submit Login Form
        Verify That Error Page Is Visible



*** Test Cases ***
Empty Username Empty Password   ${EMPTY}    ${EMPTY}
Space Username Space Password   ${SPACE*2}    ${SPACE*2}
Weirdo Credentials  edmo    edmo
Both Keyshmash  asdasd  dsadsa
lehmä Username ääntelee Password   mansikki    ammuu
