*** Settings ***
Resource  ../Resource/Utils.robot
Resource  ../Resource/TabKeywords.robot
Library  SeleniumLibrary
Test Setup  Utils.start login session
Test Teardown  Utils.close session

*** Test Cases ***
First Tab Control
    Click Tab First
    Check Tab Big Image
    Check Tab Small Image

Second Tab Control
    Click Tab Second
    Check Tab Big Image
    Check Tab Small Image

Third Tab Control
    Click Tab Third
    Check Tab Big Image
    Check Tab Small Image

Fourth Tab Control
    Click Tab Fourth
    Check Tab Big Image
    Check Tab Small Image

Fifth Tab Control
    Click Tab Fifth
    Check Tab Big Image
    Check Tab Small Image

Sixth Tab Control
    Click Tab Sixth
    Check Tab Big Image
    Check Tab Small Image

Seventh Tab Control
    Click Tab Seventh
    Check Tab Big Image
    Check Tab Small Image

Eighth Tab Control
    Click Tab Eighth
    Check Tab Big Image
    Check Tab Small Image

Ninth Tab Control
    Click Tab Ninth
    Check Tab Big Image
    Check Tab Small Image

Random Tab control
    Click Tab First
    Random Tab control
    Check Tab Big Image
    Check Tab Small Image
    Random Butik control
    Check Product Image
    Select Product
    Add Shopping Cart
