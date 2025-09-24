*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}      chrome

*** Keywords ***
Open my Browser
    Set Selenium Speed    1
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to    ${LOGIN URL}

Input username
    [Arguments]        ${username}

    Input Text    name:username    ${username}
Input pwd
    [Arguments]        ${password}
    Input Text    name:password    ${password}

Click Login Button
    Click Button    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    
Click Logout Button
    Click Element    xpath://*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span/p
    Wait Until Element Is Visible    xpath://*[@id="app"]/div[1]/div[1]/header/div[1]/div[3]/ul/li/ul/li[4]/a
    Click Link    Logout

Error message should be visible
    Page Should Contain    Invalid credentials

Error message should be visible for empty password
    Page Should Contain    Required       


Dashboard should be visible
    Page Should Contain       Dashboard

