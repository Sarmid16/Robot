*** Settings ***
Library           BuiltIn
Library           HttpLibrary.HTTP
Library           String
Resource          Data.txt

*** Variables ***

*** Test Cases ***
Validate_Service
    Create Http Context    ${host}:8080    http
    get    /logfile
    Response Status Code Should Equal    200

*** Keywords ***
