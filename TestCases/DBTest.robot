*** Settings ***
Library  DatabaseLibrary
Library  pyodbc
Library  OperatingSystem

Suite Setup  Connect To Database  pyodbc    ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***

${DBName}   Practice
${DBUser}   fssfss
${DBPass}   fssuser
${DBHost}   AS-PF1ACRZ2-L
#${DBHost}   //AS-PF1ACRZ2-L\\MSSQLSERVER
${DBPort}   1433

*** Test Cases ***
DBConnection
    ${output} =    Row Count    SELECT * FROM FXTRANS;
    Log     ${output}
    Row Count is Equal to X    SELECT * FROM FXTRANS WHERE TNUM = '2';  0