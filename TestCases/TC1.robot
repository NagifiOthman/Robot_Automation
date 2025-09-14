*** Settings ***
Library    SeleniumLibrary




*** Variables ***


*** Test Cases ***
Login Test
    
     open browser    https://orleansexpress.com/fr/    chrome
     Click Link    xpath://*[@id="masthead"]/div[3]/a[3]/img
     Input Text    id:login_email    o.nagifi@icloud.com
     Input Text    id:login_pass    Oth@2005.
     Click Element    xpath://*[@id="button_connect"]
     Close Browser



*** Keywords ***

