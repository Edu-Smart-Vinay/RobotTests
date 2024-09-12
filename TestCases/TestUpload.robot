*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demoqa.com/upload-download
${url2}  https://www.adobe.com/in/acrobat/online/excel-to-pdf.html
${FILE_TO_UPLOAD}   DealingImportTemplate.xlsx
*** Test Cases ***
LoginTest
    #Create  webdriver   chrome  executable_path ="C:\Program Files\Python37\Scripts\chromedriver.exe"
    open browser    ${url2}     ${browser}
    Maximize browser window
    #ClientPortalLogin
    #click element   id:pickfiles
    sleep  3
    #Choose File     //input[@id='uploadFile']     ${CURDIR}${/}${FILE_TO_UPLOAD}
    Choose File     //input[@id='fileInput' and @class='FileUpload__fileInput___NKeOg']    ${CURDIR}${/}${FILE_TO_UPLOAD}
    sleep       10


*** Keywords ***
ClientPortalLogin
    Input Text    id:ctl00_MasterPageContent_txtUserName      fss
    Input Text    id:ctl00_MasterPageContent_txtPassword      fssfss
    click element   xpath://input[@id='ctl00_MasterPageContent_btnSubmit']