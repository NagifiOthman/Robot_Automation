*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouse Actions
    Set Selenium Speed    1
    Open Browser    https://vinothqaacademy.com/mouse-event/    chrome
    Maximize Browser Window
    Open Context Menu    xpath://*[@id="rightclick"]
    


    Double Click Element    xpath://*[@id="dblclick"]
    Drag And Drop    xpath://*[@id="draggableElement"]   xpath://*[@id="droppableElement"]
