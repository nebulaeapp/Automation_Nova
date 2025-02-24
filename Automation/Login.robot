*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  	https://console.lepos.app/app/products
${browser}   chrome



*** Test Cases ***
Login
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep  5
    Wait Until Element is visible  xpath://*[@id="auth"]/app-main/ion-content/ion-row/ion-col[2]/ion-row/ion-col/div/ion-card/ion-card-content/ion-row/ion-col[3]/ion-button
    Click element  xpath://*[@id="auth"]/app-main/ion-content/ion-row/ion-col[2]/ion-row/ion-col/div/ion-card/ion-card-content/ion-row/ion-col[3]/ion-button
    Sleep  5
    Input text  xpath://*[@id="ion-input-0"]  demo-21@mail.com
    Sleep  5
    Input text  xpath://*[@id="ion-input-1"]  M0RqOMu0
    Click element  xpath://*[@id="auth"]/app-login/ion-content/ion-grid/ion-row/ion-col/div/ion-card/div/div[2]/ion-button
    Sleep  10

*** Keywords ***
