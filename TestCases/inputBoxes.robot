*** Settings ***

Library    SeleniumLibrary




*** Variables ***
${browser}    chrome
${url}        https://orleansexpress.com/fr/ 

*** Test Cases ***
TestingInputBox
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    Orléans Express | Voyages confortables en Autobus au Québec
    Click Link    xpath://*[@id="masthead"]/div[2]/div/div/nav/div[2]/a[1]
    ${password_txt}    Set Variable    id:login_pass

    Element Should Be Visible    ${password_txt} 
    Element Should Be Enabled    ${password_txt} 

    Input Text    ${password_txt}    Oth@2005.
    Sleep    5
    Clear Element Text    ${password_txt}
    Sleep    3

    Close Browser




*** Keywords ***