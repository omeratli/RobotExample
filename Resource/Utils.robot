*** Settings ***
Library  SeleniumLibrary
Resource  ../Resource/LoginKeywords.robot

*** Variables ***
${url}  https://www.trendyol.com/
${browser}  chrome
${email}  bowitep974@accordmail.net
${password}  123456a

*** Keywords ***
start session
    open browser   ${url}   ${browser}
    Maximize Browser Window
    Wait Until Keyword Succeeds  30  1  Click Element  ${login_first_popup_close_button}

start login session
    open browser   ${url}   ${browser}
    Maximize Browser Window
    Wait Until Keyword Succeeds  30  1  Click Element  ${login_first_popup_close_button}
    Click Login Button
    Enter Email  ${email}
    Enter Password  ${password}
    Click Enter Button

close session
    close browser