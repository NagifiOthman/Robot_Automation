*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_Keywords.robot


*** Variables ***
${Browser}    chrome
${SiteUrl}    https://demo.guru99.com/test/newtours/index.php
${user}       lakhssass
${pwd}        yessir

*** Test Cases ***
LoginTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Enter UserName     ${user}
    Enter Password     ${pwd}
    Click SignIn
    Verify Successful Login
    Close my Browsers
    