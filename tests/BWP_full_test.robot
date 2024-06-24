*** Settings ***

Resource    ../resources/common_resources.resource


*** Test Cases ***

# First Step of the Test, Open the Application in the Browser
Open Application
    Open Browser    ${URL_HOMEPAGE}    ${BROWSER}
    Maximize Browser Window

# Second Step Of The Test Navigate To The Partners Menu
Navigate to Partners
    Click Element    ${PARTNERS_BUTTON}
    [Teardown]    Close Browser