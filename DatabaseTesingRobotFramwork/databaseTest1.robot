*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem
Suite Setup    Connect To Database    pymysql        ${DBname}   ${DBHost}   ${DBUser}   ${DBPass}   ${DBPort}
Suite Teardown    Disconnect From Database


*** Variables ***
${DBname}       mydb
${DBHost}       127.0.0.1
${DBUser}       root
${DBPass}       Future@981
${DBPort}       3306
*** Test Cases ***
Create person table
    ${output}=  Execute sql string    Create table person(id integer,first_name varchar(20),lastname varchar(20))


*** Keywords ***

