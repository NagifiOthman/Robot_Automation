*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling Tabbed windows
    Set Selenium Speed        1
    Open Browser    https://vinothqaacademy.com/multiple-windows/    chrome
    Maximize Browser Window
    Click Element   xpath://*[@id="button1"]
    Switch Window    title:Demo Site – WebTable – Vinoth Tech Solutions
    Maximize Browser Window
    Click Element    xpath://*[@id="addBtn"]



