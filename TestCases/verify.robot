*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://vm-qc-rt-5.iongroup.net/ClientPortal/login.aspx
*** Test Cases ***
LoginTest
    #Create  webdriver   chrome  executable_path ="C:\Program Files\Python37\Scripts\chromedriver.exe"
    open browser    ${url}     ${browser}
    Maximize browser window
    ClientPortalLogin
    sleep   10
    click element   xpath://*[contains(text(),'Dealing')]
    click element   xpath://*[contains(text(),' New Transactions ')]
    sleep   5
    #sorting CCY1 amount
    ${isSorted}=    Get Element Attribute   xpath://table[@class='mat-mdc-table mdc-data-table__table cdk-table mat-sort row-hover']/thead/tr[1]/th[4]      aria-sort
    Log To console  ${isSorted}
    sleep   5
    click element   xpath://table[@class='mat-mdc-table mdc-data-table__table cdk-table mat-sort row-hover']/thead/tr[1]/th[4]
    sleep   5
    ${isSorted2}=    Get Element Attribute   xpath://table[@class='mat-mdc-table mdc-data-table__table cdk-table mat-sort row-hover']/thead/tr[1]/th[4]      aria-sort
    Log To console  ${isSorted2}
    sleep   10
*** Keywords ***
ClientPortalLogin
    Input Text    id:ctl00_MasterPageContent_txtUserName      fss
    Input Text    id:ctl00_MasterPageContent_txtPassword      fssfss
    click element   xpath://input[@id='ctl00_MasterPageContent_btnSubmit']