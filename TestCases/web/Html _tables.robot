*** Settings ***
Library    SeleniumLibrary




*** Test Cases ***
Handle HTML Tables
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    # Add steps to interact with or verify the HTML table
    ${row_count}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${col_count}=    Get Element Count    xpath://table[@name='BookTable']/tbody/th
    Log To Console    Number of rows: ${row_count}
    Log To Console    Number of rows: ${col_count}
    


*** Keywords ***
# Add custom keywords here for table interactions if needed