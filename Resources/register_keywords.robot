*** Settings ***
Library    SeleniumLibrary
Variables    ../Page_objects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    #Set Selenium Speed    1
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

Enter Address
    [Arguments]    ${add1}
    Input Text    ${txt_add1}    ${add1}


Enter City
    [Arguments]    ${city}
    Input Text    ${txt_city}    ${city}

Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state}
Select Country
    [Arguments]    ${country}
    Select From List By Label    ${drp_country}    ${country}

Click envoyer
    click button    ${btn_submit}
Enter Postal Code
    [Arguments]    ${postalCode}
    Input Text    ${txt_postCode }    ${postalCode}

Enter password
    [Arguments]    ${password}
    Input Text    ${txt_password}    ${password}

Enter comfirmed Password
    [Arguments]    ${cPassword}
    Input Text    ${txt_confirmedPassword }    ${cPassword}

Enter username
    [Arguments]    ${user}
    Input Text    ${txt_userName}    ${user}

Verify Successful Registration
    Title Should Be   Register: Mercury Tours


Close my browsers
    Close All Browsers