*** Settings ***
Resource  ../Resource/Utils.robot
Resource  ../Resource/LoginKeywords.robot
Library  SeleniumLibrary
Test Setup  Utils.start session
Test Teardown  Utils.close session

*** Variables ***
${email}  bowitep974@accordmail.net
${password}  123456a

*** Test Cases ***
Login Test
    Click Login Button
    Enter Email  ${email}
    Enter Password  ${password}
    Click Enter Button
