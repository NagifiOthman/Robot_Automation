*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
NavigationKeywords Test
    Open Browser    https://www.google.com/    chrome
    ${loc1}=    Get Location
    Log To Console    ${loc1}
    Sleep    1


    Open Browser     https://www.bing.com/    chrome
    ${loc2}=    Get Location
    Log To Console    ${loc2}
    Sleep    1

