*** Settings ***

Resource    ../resources/common_resources.resource


*** Test Cases ***

# First Step of the Test, Open the Application in the Browser
Open Application
    Open Browser    ${URL_HOMEPAGE}    ${BROWSER}
    Maximize Browser Window

# Second Step Of The Test Navigate To The Partners Menu
Navigate To Partners
    Click Element    ${PARTNERS_BUTTON}

# Third Step Of The Test Request the User Data via the API
Quick Get Request Test
    ${response}=    GET    https://random-data-api.com/api/users/random_user

    