*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Scorlling test
    Set Selenium Speed    3
    Open Browser    https://www.worldometers.info/geography/alphabetical-list-of-countries/   chrome
    Maximize Browser Window
    #Execute Javascript    window.scrollTo(0,1500)
    #Scroll Element Into View    xpath:/html/body/div[2]/div[2]/div/div[1]/div[2]/div[2]/div/div[3]/table/tbody/tr[117]/td[3]/a
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Sleep    1
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    
