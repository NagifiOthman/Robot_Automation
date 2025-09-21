*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Screenshots Test
    Set Selenium Speed    1
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
     Input Text       name:username     lakhssass
    Input Text        name:password     lancii

    Capture Element Screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img   
   

