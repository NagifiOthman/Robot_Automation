*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling Frames
    Open Browser    https://www.tutorialspoint.com/selenium/practice/frames.php    chrome
    Maximize Browser Window

    Select Frame    xpath:/html/body/main/div/div/div[2]/iframe[1]
    Click Link   /selenium/index.htm
    Unselect Frame


    Sleep    2
    Switch Window    MAIN

    Select Frame    xpath:/html/body/main/div/div/div[2]/iframe[2]
    Wait Until Element Is Visible    css=a[href="/selenium/index.htm"]    5s
    Scroll Element Into View          css=a[href="/selenium/index.htm"]
    Click Link   /selenium/index.htm
    Unselect Frame    


    