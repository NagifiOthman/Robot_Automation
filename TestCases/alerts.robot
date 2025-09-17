*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling alerts
    Open Browser    https://www.tutorialspoint.com/selenium/practice/alerts.php    chrome
    Click Element  xpath:/html/body/main/div/div/div[2]/div[1]/button
    Sleep    2
    #Handle Alert    dismiss
    #Handle Alert    leave

    Alert Should Be Present    Hello world!


