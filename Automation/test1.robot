*** Settings ***
Library     SeleniumLibrary
Library           SeleniumLibrary

*** Variables ***
${url}  	https://console.lepos.app/app/products
${browser}   chrome
${SHADOW_HOST}    select-label  # Replace with actual shadow host selector
${DROPDOWN}       xpath://*[@id="cool-sidebar"]/ion-content/div/div[2]/ion-item/ion-label      # Replace with actual dropdown selector


*** Test Cases ***
Login
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Sleep  5
    Wait Until Element is visible  xpath://*[@id="auth"]/app-main/ion-content/ion-row/ion-col[2]/ion-row/ion-col/div/ion-card/ion-card-content/ion-row/ion-col[3]/ion-button
    Click element  xpath://*[@id="auth"]/app-main/ion-content/ion-row/ion-col[2]/ion-row/ion-col/div/ion-card/ion-card-content/ion-row/ion-col[3]/ion-button
    Sleep  5
    #Login ID
    Input text  xpath://*[@id="ion-input-0"]  demo-21@mail.com
    Sleep  2
    #Password
    Input text  xpath://*[@id="ion-input-1"]  M0RqOMu0
    Click element  xpath://*[@id="auth"]/app-login/ion-content/ion-grid/ion-row/ion-col/div/ion-card/div/div[2]/ion-button
    Sleep  10
    #Click on Product then add items
    Mouse Over  xpath://*[@id="cool-sidebar"]/ion-content/div/div[2]/ion-item/ion-label
    Click element   xpath://*[@id="cool-sidebar"]/ion-content/div/div[2]/ion-item/ion-label
    Wait Until Element is visible   xpath://*[@id="cool-sidebar"]/ion-content/div/div[2]/ion-item/ion-label
    Sleep  10
    Click element  xpath://ion-label[normalize-space()='Items']
    Sleep  10
    Click element  xpath://span[normalize-space()='Add']
    Sleep  5
    #Label Name
    Input text  xpath://*[@id="ion-input-8"]  Test1
    Sleep  50
    #Dropdown Category
    ${shadow_root}=  Get Shadow Root    ${SHADOW_HOST}
    ${dropdown}=     Get Element From Shadow DOM    ${shadow_root}    ${DROPDOWN}
    Sleep  10
    #Dropdown Brand
    #Select from list by label  xpath://*[@id="main-row"]/ion-col[3]/div/ion-row[2]/ion-col[2]/app-select/div/ion-select

    #SKU
    Scroll Element Into View  xpath://*[@id="ion-input-4"]
    Input text  xpath://*[@id="ion-input-4"]  abc
    Sleep  5
    #Execute JavaScript  window.scrollTo(0,2000)
    Scroll Element Into View  xpath://*[@id="ion-input-7"]
    Sleep  5


    #Product Price
    Input text  xpath://*[@id="ion-input-2"]  5
    Sleep  2
    #Item Cost
    Input text  xpath://*[@id="ion-input-3"]  1
    Sleep  2
    #Product Name
    Input text  xpath://*[@id="ion-input-7"]  ApplePIE
    Sleep  5
    Input text  xpath://*[@id="ion-textarea-0"]   Testing123

    Sleep  2




    Click element  xpath://*[@id="main"]/app-apple/ion-router-outlet/app-create-product/ion-footer/div/ion-button[2]
    Sleep  2
    Click element  xpath://*[@id="main"]/app-apple/ion-router-outlet/app-create-product/ion-footer/div/ion-button[2]
    Sleep  4
    Click element  xpath://*[@id="main"]/app-apple/ion-router-outlet/app-create-product/ion-footer/div/ion-button[2]
    Sleep  5


*** Keywords ***
Get Shadow Root
    [Arguments]    ${host}
    ${element}=    Get WebElement    ${host}
    ${shadow_root}=    Execute JavaScript    return arguments[0].shadowRoot;    ${element}
    [Return]    ${shadow_root}

Get Element From Shadow DOM
    [Arguments]    ${shadow_root}    ${selector}
    ${element}=    Execute JavaScript    return arguments[0].querySelector('${selector}');    ${shadow_root}
    [Return]    ${element}