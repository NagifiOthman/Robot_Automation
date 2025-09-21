*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Scorlling test
    Set Selenium Speed    1
    Open Browser    https://www.worldometers.info/geography/alphabetical-list-of-countries/   chrome
    Maximize Browser Window
    #Execute Javascript    window.scrollTo(0,1500)
    #Scroll Element Into View    xpath:/html/body/div[2]/div[2]/div/div[1]/div[2]/div[2]/div/div[3]/table/tbody/tr[117]/td[3]/a
    #Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    #Sleep    1
    #Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)

    ${count}=    Get Element Count    xpath://a
    Log To Console    ${count}
    @{linkItems}    Create List
    FOR    ${i}    IN RANGE    1    ${count}
    ${linkText}=    Get Text    xpath=(//a)[${i}]

    Log To Console    ${linkText}
    END

   

