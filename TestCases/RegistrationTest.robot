*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/register_keywords.robot


*** Variables ***
${Browser}    chrome
${SiteUrl}    https://demo.guru99.com/test/newtours/index.php


*** Test Cases ***
RegistrationTest
    Open my Browser    ${SiteUrl}    ${Browser}
    Click Register Link
    Enter FirstName           Othman
    Enter LastName            Nagifi
    Enter Phone               1234567890
    Enter Email               othnag2020gmail.com
    Enter Address             Ottawa
    Enter City                Ottawa
    Enter State               Ontario
    Enter Postal Code         K1N 9E5
    Select Country            CANADA
    Enter username            lakhssass
    Enter password            johnxyz
    Enter comfirmed Password  johnxyz
    Sleep    3
    Click envoyer

    Verify Successful Registration
    close my browsers