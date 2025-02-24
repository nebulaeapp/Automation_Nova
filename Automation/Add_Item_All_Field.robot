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
    Sleep  5

    #Dropdown Category
    Click element  xpath://*[@id="main-row"]/ion-col[3]/div/ion-row[2]/ion-col[1]/app-select/div/ion-select
    Sleep  3
    Click element  xpath://*[@id="ion-overlay-4"]/ion-select-popover/ion-list/ion-radio-group/ion-item[2]
    Sleep  5

    #Dropdown Brand
    Click element  xpath://*[@id="main-row"]/ion-col[3]/div/ion-row[2]/ion-col[2]/app-select/div/ion-select
    Sleep  3
    Click element  xpath://*[@id="ion-overlay-5"]/ion-select-popover/ion-list/ion-radio-group/ion-item[3]
    Sleep  5

    Scroll Element Into View  xpath://*[@id="ion-input-4"]

    #Product Type
    Click element  xpath://*[@id="main-row"]/ion-col[3]/div/ion-row[3]/ion-col[1]/app-select/div/ion-select
    Sleep  3
    Click element  xpath://*[@id="ion-overlay-6"]/ion-select-popover/ion-list/ion-radio-group/ion-item[1]
    Sleep  5

    Scroll Element Into View   xpath://*[@id="main-row"]/ion-col[3]/div/ion-row[6]/ion-col[2]/div/ion-toggle

    #SKU
    #Scroll Element Into View  xpath://*[@id="ion-input-4"]
    Input text  xpath://*[@id="ion-input-4"]  abcde
    Sleep  5

    #Barcode
    Input text  xpath://*[@id="ion-input-5"]  322322
    Sleep  3
    #Execute JavaScript  window.scrollTo(0,2000)

    #Active toggle
    Click element  xpath://*[@id="main-row"]/ion-col[3]/div/ion-row[5]/ion-col[1]/div/ion-toggle
    Sleep  5

    #Quick Key toggle (Remove #hastag if want to turn off the toggle)
    #Click element  xpath://*[@id="main-row"]/ion-col[3]/div/ion-row[5]/ion-col[2]/div/ion-toggle
    Sleep  2
    Input text  xpath://*[@id="ion-input-6"]  5
    Sleep  5

    Scroll Element Into View  xpath://*[@id="main"]/app-apple/ion-router-outlet/app-create-product/ion-content/form/app-product-info-form/div/ion-grid/form/ion-row[2]/ion-col/div/h4

    #Feature toggle
    Click element  xpath://*[@id="main-row"]/ion-col[3]/div/ion-row[6]/ion-col[2]/div/ion-toggle
    Sleep  20
    Input text  xpath://*[@id="ion-input-10"]  5
    Sleep  5

    Scroll Element Into View  xpath://*[@id="main"]/app-apple/ion-router-outlet/app-create-product/ion-content/form/app-product-info-form/div/ion-grid/form/ion-row[4]/ion-col[1]/app-input/div/ion-input

    #Product Price
    Input text  xpath://*[@id="ion-input-2"]  5
    Sleep  2

    #Item Cost
    Input text  xpath://*[@id="ion-input-3"]  1
    Sleep  2

    #Product Name
    Input text  xpath://*[@id="ion-input-7"]  Cake
    Sleep  3

    #Product Description
    Input text  xpath://*[@id="ion-textarea-0"]   Testing123
    Sleep  5




    Click element  xpath://*[@id="main"]/app-apple/ion-router-outlet/app-create-product/ion-footer/div/ion-button[2]
    Sleep  2
    Click element  xpath://*[@id="main"]/app-apple/ion-router-outlet/app-create-product/ion-footer/div/ion-button[2]
    Sleep  4
    Click element  xpath://*[@id="main"]/app-apple/ion-router-outlet/app-create-product/ion-footer/div/ion-button[2]
    Sleep  5


*** Keywords ***
