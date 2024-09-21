*** Settings ***
Library  SeleniumLibrary
Library  DataDriver  ../TestData/TestData.xlsx
Suite Setup  Login
Test Template  Invalid Login Scenarios
*** Variables ***
${browser}  chrome
${url}  https://vm-qc-rt-5.iongroup.net/ClientPortal/login.aspx

*** Test Cases ***
Verify Login Fails  ${username}  {password}

*** Keywords ***
Login
    open browser    ${url}     ${browser}
    Maximize browser window
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}
    Input Text    id:ctl00_MasterPageContent_txtUserName      ${username}
    Input Text    id:ctl00_MasterPageContent_txtPassword      ${password}
    click element   xpath://input[@id='ctl00_MasterPageContent_btnSubmit']
    Sleep  5s

