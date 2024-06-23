*** Settings ***
Documentation    Testing the Blue Water Pool Task and Equipment Registry System Second Step Navigate to the Partners Menu
Resource    common_resources.resource
Library    SeleniumLibrary



*** Keywords ***
Open Application
    Open Browser    ${URL_HOMEPAGE}    ${BROWSER}
    Maximize Browser Window

Navigate To Partners
    Click Element    ${PARTNERS_BUTTON}


*** Test Cases ***
Second Step Of The Test Navigate To The Partners Menu
    Open Application
    Navigate To Partners
    [Teardown]    Close Browser