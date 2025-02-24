*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  	https://console.lepos.app/app/products
${browser}   chrome

*** Test Cases ***
Open Browser and Check
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep  10
    Close Browser

*** Keywords ***
