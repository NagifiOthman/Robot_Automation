*** Settings ***
Library    SeleniumLibrary
Variables    ../Page_objects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Set Selenium Speed    1
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]    ${username}
    Input Text    ${login_username}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${login_password}    ${password}

Click SignIn
    click button    ${login_button}

Verify Successful Login
    Title Should Be    Welcome: Mercury Tours

Close my browsers
    Close All Browsers