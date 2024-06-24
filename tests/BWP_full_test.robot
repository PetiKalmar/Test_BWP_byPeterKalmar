*** Settings ***

Resource    ../resources/common_resources.resource


*** Test Cases ***

# First Step of the Test, Open the Application in the Browser
Open Application
    Open Browser    ${URL_HOMEPAGE}    ${BROWSER}
    Maximize Browser Window

    Sleep    5sec

# Second Step of the Test, Navigate to the Partners Menu
Navigate To Partners
    Click Element    ${PARTNERS_BUTTON_XPATH}

    Sleep    5sec

# Third Step Of the Test, Request the User Data via the API
Request The User Data With Api And Register Partner
    ${response}    GET    ${URL_API_USERS}    params=size=1

# Fourth Step of the Test, Register Partner based on the API message
    ${body}    Set Variable    ${response.json()}
    ${CUSTOMER_NAME}    Set Variable    ${body}[0][first_name] ${body}[0][last_name]
    ${CUSTOMER_MAIL}    Set Variable    ${body}[0][email]
    ${CUSTOMER_ID}    Set Variable    ${body}[0][id]
    
    Wait Until Element Is Visible    ${ADD_CUSTOMER_XPATH}
    Click Element    ${ADD_CUSTOMER_XPATH}

    Sleep    5sec

    Input Text    ${CUSTOMER_NAME_XPATH}    ${CUSTOMER_NAME}
    ${customer_name}    Get Element Attribute    ${CUSTOMER_NAME_XPATH}    value
    Should Be Equal As Strings    ${customer_name}    ${CUSTOMER_NAME}

    Sleep    5sec

    Input Text    ${CUSTOMER_MAIL_XPATH}    ${CUSTOMER_MAIL}
    ${customer_mail}    Get Element Attribute    ${CUSTOMER_MAIL_XPATH}    value
    Should Be Equal As Strings    ${customer_mail}    ${CUSTOMER_MAIL}

    Sleep    5sec

    ${customer_phone}    Get Element Attribute    ${CUSTOMER_PHONE_XPATH}    value
    Should Be Equal As Strings    ${customer_phone}    ${EMPTY}

    Sleep    5sec

    Input Text    ${CUSTOMER_COMMENT_XPATH}    ${CUSTOMER_ID}
    ${customer_comment}    Get Element Attribute    ${CUSTOMER_COMMENT_XPATH}    value
    Should Be Equal As Strings    ${customer_comment}    ${CUSTOMER_ID}    

# Fifth Step of the Test, Save the Form

    Sleep    5sec

    Click Element    ${CUSTOMER_DATA_SAVE_XPATH}

# Sixth Step of the Test, Navigate to the Facilities Menu

    Sleep    5sec

    Click Element    ${FACILITY_BUTTON_XPATH}


    