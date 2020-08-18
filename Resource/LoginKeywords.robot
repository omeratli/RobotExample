*** Settings ***
Library  SeleniumLibrary
Variables  ../PO/Locators.py

*** Keywords ***
#Login Pop-up Page
Click Login Button
    Wait Until Keyword Succeeds  30  1  Click Element  ${login_button}

Enter Email
    [Arguments]  ${email}
    Wait Until Keyword Succeeds  30  1  Input Text  ${login_email}  ${email}

Enter Password
    [Arguments]  ${password}
    Wait Until Keyword Succeeds  30  1  Input Text  ${login_password}  ${password}

Click Enter Button
    Wait Until Keyword Succeeds  30  1  Click Element  ${login_enter}