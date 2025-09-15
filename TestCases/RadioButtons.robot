*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}   chrome
${url}       https://www.letskodeit.com/practice


*** Test Cases ***
TestingRadioBox
     Open Browser    ${url}    ${Browser}
     Maximize Browser Window
     Set Selenium Speed    2
     Select Radio Button    cars    bmw
     Select Checkbox    benz
     Select Checkbox    bmw
     Unselect Checkbox    bmw
     Close Browser
   


*** Keywords ***