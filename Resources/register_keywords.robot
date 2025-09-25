*** Settings ***
Library    SeleniumLibrary
Variables    ../Page_objects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Click Register Link
    click link    ${link_Reg}

Enter FirstName
    [Arguments]    ${firstName}
    Input Text    ${txt_firstName}    ${firstName}

Enter LastName
    [Arguments]    ${lastName}
    Input Text    ${txt_lastName}    ${lastName}

Enter Phone
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}

Enter Email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}

Enter Address1
    [Arguments]    ${add1}
    Input Text    ${txt_add1}    ${add1}

Enter Address2
    [Arguments]    ${add2}
    Input Text    ${txt_add2}    ${add2}

Enter City
    [Arguments]    ${city}
    Input Text    ${txt_city}    ${city}

Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state}