*** Settings ***
Library    SeleniumLibrary




*** Test Cases ***
Handle HTML Tables
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    # Add steps to interact with or verify the HTML table
    ${row_count}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${col_count}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[2]/td
    Log To Console    Number of rows: ${row_count}
    Log To Console    Number of columns: ${col_count}
    ${data}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[3]
    Log To Console    Data at row 3, column 5: ${data}
    Table Cell Should Contain    xpath://table[@name='BookTable']   5    3    Selenium
    



*** Keywords ***
# Add custom keywords here for table interactions if needed