*** Settings ***
Library    SeleniumLibrary




*** Variables ***
${browser}    chrome
${url}        https://orleansexpress.com/fr/ 



*** Test Cases ***
Login Test
    
     Open Browser        ${url}    ${browser}
     Click Link        xpath://*[@id="masthead"]/div[3]/a[2]
     Input Text        id:login_email    o.nagifi@icloud.com
     Input Text        id:login_pass    Oth@2005.
     Click Element     xpath://*[@id="button_connect"]
     Close Browser



*** Keywords ***

