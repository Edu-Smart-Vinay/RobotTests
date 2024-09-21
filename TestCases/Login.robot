*** Settings ***
Library  SeleniumLibrary
Variables  ../Objects/loginPage.py
*** Variables ***
${browser}  chrome
${url}  https://vm-qc-rt-5.iongroup.net/ClientPortal/login.aspx
*** Test Cases ***
LoginTest
    #Create  webdriver   chrome  executable_path ="C:\Program Files\Python37\Scripts\chromedriver.exe"
    open browser    ${url}     ${browser}
    Maximize browser window
    ClientPortalLogin


*** Keywords ***
ClientPortalLogin
    Input Text    ${txtUsername}      fss
    Input Text    id:ctl00_MasterPageContent_txtPassword      fssfss
    click element   xpath://input[@id='ctl00_MasterPageContent_btnSubmit']