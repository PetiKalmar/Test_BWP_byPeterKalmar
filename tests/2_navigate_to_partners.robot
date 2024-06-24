*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Quick Get Request Test
    ${response}=    GET    https://random-data-api.com/api/users/random_user
