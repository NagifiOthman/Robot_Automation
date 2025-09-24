*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Invalid login 


*** Test Cases ***    username    password




Right user empty pass    Admin    ${EMPTY}

   
    
    

Right user wrong pass    Admin    admin
    

Wrong user wrong pass    lakhssass    lancii
  


*** Keywords ***
Invalid login
    Set Selenium Speed    1
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click Login Button
    Error message should be visible

Invalid login with empty password
    Set Selenium Speed    1
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click Login Button
    Error message should be visible for empty password

Valid login
    Set Selenium Speed    1
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click Login Button
    Dashboard should be visible
