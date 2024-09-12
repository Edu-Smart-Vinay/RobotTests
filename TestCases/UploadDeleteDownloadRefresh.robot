*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://vm-qc-rt-5.iongroup.net/ClientPortal/login.aspx
${FILE_TO_UPLOAD}   DealingImportTemplate.xlsx
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
    #uploading file
    #Choose File     //input[@id='excelUpload']       ${CURDIR}${/}${FILE_TO_UPLOAD}
    #sleep   5
    #deleting a record
    click element   xpath://*[@id='mat-mdc-checkbox-6-input']
    click element   xpath://*[contains(text(),'delete')]
    sleep   15
    #download excel template
    click element   xpath://*[contains(text(),' download ')]
    sleep   15
    #Refreshing the trades
    click element   xpath://*[contains(text(),' refresh ') and @type='button']
    sleep   15
*** Keywords ***
ClientPortalLogin
    Input Text    id:ctl00_MasterPageContent_txtUserName      fss
    Input Text    id:ctl00_MasterPageContent_txtPassword      fssfss
    click element   xpath://input[@id='ctl00_MasterPageContent_btnSubmit']