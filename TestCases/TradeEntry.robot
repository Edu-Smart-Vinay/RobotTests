*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://vm-qc-rt-5.iongroup.net/ClientPortal/login.aspx
${Dealing}  xpath://*[contains(text(),'Dealing')]
*** Test Cases ***
TradeEntry
    open browser    ${url}     ${browser}
    Maximize browser window
    ClientPortalLogin
    sleep   20
    click element   ${Dealing}
    click element   xpath://*[contains(text(),' New Transactions ')]
    sleep   5
    click element   xpath://input[@value = 'New Transaction']
    sleep   5
    #Entering contract amount
    Input Text  id:mat-input-10      10k
    sleep   5
    #${counterAmount}    set variable   id:mat-input-11
    #Element Should Not Be Enabled   ${counterAmount}
    #clicking counter currency combo box
    click element   id:mat-select-28
    sleep   5
    #clicking EUR currency
    click element   id:mat-option-200
    #click element   xpath://div[contains(@class, 'mat-mdc-form-field-infix ng-tns-c1607617776-68')]
    sleep   5
    #clicking calendar
    click element   id:mat-input-12
    sleep   5
    #selecting 26th February 2024
    click element   xpath://table[@class='mat-calendar-table']/tbody/tr[2]/td[2]
    sleep   5
    #Saving the trade
    click element   id:saveButton
*** Keywords ***
ClientPortalLogin
    Input Text    id:ctl00_MasterPageContent_txtUserName      fss
    Input Text    id:ctl00_MasterPageContent_txtPassword      fssfss
    click element   xpath://input[@id='ctl00_MasterPageContent_btnSubmit']