*** Settings ***
Documentation    Testing the Blue Water Pool Task and Equipment Registry System Third Step Request the User Data via the API
Resource    common_resources.resource
Library    SeleniumLibrary



*** Keywords ***
Open Application
    Open Browser    ${URL_HOMEPAGE}    ${BROWSER}
    Maximize Browser Window

Navigate To Partners
    Click Element    ${PARTNERS_BUTTON}

Request User Data With API


*** Test Cases ***
Third Step Of The Test Request the User Data via the API
    Open Application
    Navigate To Partners
    [Teardown]    Close Browser