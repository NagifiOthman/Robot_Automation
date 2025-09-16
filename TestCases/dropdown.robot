*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Browser}   chrome
${url}       https://www.letskodeit.com/practice


*** Test Cases ***
TestingRadioBox
    Set Selenium Speed        1
    Open Browser    ${url}    ${Browser}
     Maximize Browser Window
     Select From List By Value    carselect    benz
     Select All From List    multiple-select-example    
     Unselect From List By Index    multiple-select-example     1

     