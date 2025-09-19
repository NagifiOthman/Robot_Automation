*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling Multiple windows
        Set Selenium Speed    1
        Open Browser    https://www.google.com/    chrome
        Maximize Browser Window

        Sleep    1

        Open Browser     https://www.bing.com/    chrome
        Maximize Browser Window


        Switch Browser    1
        ${title1}=    Get Title
        Log To Console    ${title1}

        Sleep    1

         Switch Browser    2
        ${title2}=    Get Title
        Log To Console    ${title2}

