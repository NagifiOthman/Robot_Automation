*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login 
${browser}    chrome


*** Test Cases ***
Creating user_defined_keywords
    Set Selenium Speed    1
    ${pageTitle}=    Launch Browser    ${url}    ${browser}
    Log To Console   ${pageTitle}
    Input Text        name:username     lakhssass
    Input Text        name:password     lancii
