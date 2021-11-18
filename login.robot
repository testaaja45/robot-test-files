*** Settings ***
Library         SeleniumLibrary
Resource    resource.robot

*** Keywords ***

Verify That Welcome Page Is Visible
        Page Should Contain             Welcome Page
        Location Should Be    ${URL}/welcome.html
    Title Should Be    Welcome Page

Verify That Login Page Is Visible
        Page Should Contain             Login Page

Do Successful Login
    Open Browser To Login Page
    Enter Username      ${USERNAME}
    Enter Password      ${PASSWORD}
    Submit Login Form



*** Test Cases ***

Welcome Page Should Be Visible After Successful Login
        Open Browser To Login Page
        Enter Username  ${USERNAME}
        Enter Password  ${PASSWORD}
        Submit Login Form
        Verify That Welcome Page Is Visible
        [Teardown]      Close Browser

Login Page Should Be Visible After Successful Logout
        [Setup]         Do Successful Login
        Click Link      logout
        Verify That Login Page Is Visible
        [Teardown]      Close Browser
