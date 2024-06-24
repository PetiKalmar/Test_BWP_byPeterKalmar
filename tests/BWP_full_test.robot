*** Settings ***

Resource    ../resources/common_resources.resource


*** Test Cases ***

Test Of Blue Water Pool System

# First Step of the Test, Open the Application in the Browser

    Open Browser    ${URL_HOMEPAGE}    ${BROWSER}
    Maximize Browser Window

    Sleep    5sec

# Second Step of the Test, Navigate to the Partners Menu

    Click Element    ${PARTNERS_BUTTON_XPATH}

    Sleep    5sec

# Third Step Of the Test, Request the User Data via the API

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

    Sleep    5sec

# Seventh Step of the Test, Register Facility based on the API message

    ${FACILITY_CITY}    Set Variable    ${body}[0][address][city]
    ${FACILITY_ZIP}    Set Variable    ${body}[0][address][zip_code]
    ${FACILITY_STREET}    Set Variable    ${body}[0][address][street_name]
    
    Wait Until Element Is Visible    ${ADD_FACILITY_XPATH}
    Click Element    ${ADD_FACILITY_XPATH}

    Sleep    5sec
    
    Click Element    ${FACILITY_CUSTOMER_BUTTON_XPATH}

    Sleep    5sec

    Click Element    ${FACILITY_CUSTOMER_TEXTBOX_XPATH}

    Sleep    5sec

    Input Text    ${FACILITY_CUSTOMER_TEXTBOX_XPATH}    ${CUSTOMER_NAME}
    ${customer_name}    Get Element Attribute    ${FACILITY_CUSTOMER_TEXTBOX_XPATH}    value
    Should Be Equal As Strings    ${customer_name}    ${CUSTOMER_NAME}
    
    Sleep    5sec

    Click Element    ${FACILITY_CLICK_CHOOSE_XPATH}

    Sleep    5sec

    Click Element    ${FACILITY_CLICK_HELP_XPATH}

    Sleep    5sec

    Input Text    ${FACILITY_CITY_XPATH}    ${FACILITY_CITY}
    ${facility_city}    Get Element Attribute    ${FACILITY_CITY_XPATH}    value
    Should Be Equal As Strings    ${facility_city}    ${FACILITY_CITY}

    Sleep    5sec

    Input Text    ${FACILITY_ZIP_XPATH}    ${FACILITY_ZIP}
    ${facility_zip}    Get Element Attribute    ${FACILITY_ZIP_XPATH}    value
    Should Be Equal As Strings    ${facility_zip}    ${FACILITY_ZIP}

    Sleep    5sec

    Input Text    ${FACILITY_STREET_XPATH}    ${FACILITY_STREET}
    ${facility_street}    Get Element Attribute    ${FACILITY_STREET_XPATH}    value
    Should Be Equal As Strings    ${facility_street}    ${FACILITY_STREET}

    Sleep    5sec

    ${facility_house}    Get Element Attribute    ${FACILITY_HOUSE_XPATH}    value
    Should Be Equal As Strings    ${facility_house}    ${EMPTY}

    Sleep    5sec

    # Eighth Step of the Test, Save the Form

    Click Element    ${FACILITY_DATA_SAVE_XPATH}

    Sleep    5sec

    # Tenth Step of the Test, Navigate to the Devices menu

    Click Element    ${DEVICE_BUTTON_XPATH}

    Sleep    5sec

    # Ninth and Eleventh Steps of the Test, Request Data for two Devices via the API and Register the two received Devices to the Site recorded in Step 7

    Click Element    ${ADD_DEVICE_XPATH}

    Sleep    5sec

    Click Element    ${DEVICE_CUSTOMER_BUTTON_XPATH}

    Sleep    5sec

    Click Element    ${DEVICE_CUSTOMER_TEXTBOX_XPATH}

    Sleep    5sec
    
    Input Text    ${DEVICE_CUSTOMER_TEXTBOX_XPATH}    ${CUSTOMER_NAME}
    ${customer_name}    Get Element Attribute    ${DEVICE_CUSTOMER_TEXTBOX_XPATH}    value
    Should Be Equal As Strings    ${customer_name}    ${CUSTOMER_NAME}

    Sleep    5sec

    Click Element    ${DEVICE_CHOOSE_XPATH}

    Sleep    5sec

    Click Element    ${DEVICE_CLICK_HELP_XPATH}

    Sleep    5sec

    ${response}    GET    ${URL_API_DEVICE}    params=size=2

    ${body}    Set Variable    ${response.json()}
    ${DEVICE_NAME1}    Set Variable    ${body}[0][manufacturer] ${body}[0][model]
    ${DEVICE_NAME2}    Set Variable    ${body}[1][manufacturer] ${body}[1][model]
    ${DEVICE_PLATFORM1}    Set Variable    ${body}[0][platform]
    ${DEVICE_PLATFORM2}    Set Variable    ${body}[1][platform]
    ${DEVICE_SN1}    Set Variable    ${body}[0][serial_number]
    ${DEVICE_SN2}    Set Variable    ${body}[1][serial_number]

    Sleep    5sec

    Input Text    ${DEVICE_NAME_XPATH}    ${DEVICE_NAME1}
    ${device_name}    Get Element Attribute    ${DEVICE_NAME_XPATH}    value
    Should Be Equal As Strings    ${device_name}    ${DEVICE_NAME1}

    Sleep    5sec

    Input Text    ${DEVICE_DESCRIPTION_XPATH}    ${DEVICE_PLATFORM1}
    ${device_description}    Get Element Attribute    ${DEVICE_DESCRIPTION_XPATH}    value
    Should Be Equal As Strings    ${device_description}    ${DEVICE_PLATFORM1}

    Sleep    5sec

    Input Text    ${DEVICE_COMMENT_XPATH}    ${DEVICE_SN1}
    ${device_comment}    Get Element Attribute    ${DEVICE_COMMENT_XPATH}    value
    Should Be Equal As Strings    ${device_comment}    ${DEVICE_SN1}

    Sleep    5sec

    Click Element    ${DEVICE_DATA_SAVE_XPATH}

    Sleep    5sec

    Click Element    ${ADD_DEVICE_XPATH}

    Sleep    5sec

    Click Element    ${DEVICE_FACILITY_BUTTON_XPATH}

    Sleep    5sec

    Click Element    ${DEVICE_CHOOSE_XPATH}

    Sleep    5sec

    Click Element    ${DEVICE_FACILITY_CHOOSE_XPATH}

    Sleep    5sec

    Input Text    ${DEVICE_NAME_XPATH}    ${DEVICE_NAME2}
    ${device_name}    Get Element Attribute    ${DEVICE_NAME_XPATH}    value
    Should Be Equal As Strings    ${device_name}    ${DEVICE_NAME2}

    Sleep    5sec

    Input Text    ${DEVICE_DESCRIPTION_XPATH}    ${DEVICE_PLATFORM2}
    ${device_description}    Get Element Attribute    ${DEVICE_DESCRIPTION_XPATH}    value
    Should Be Equal As Strings    ${device_description}    ${DEVICE_PLATFORM2}

    Sleep    5sec

    Input Text    ${DEVICE_COMMENT_XPATH}    ${DEVICE_SN2}
    ${device_comment}    Get Element Attribute    ${DEVICE_COMMENT_XPATH}    value
    Should Be Equal As Strings    ${device_comment}    ${DEVICE_SN2}

    Sleep    5sec

# Twelfth step of the Test, Save the Form

    Click Element    ${DEVICE_DATA_SAVE_XPATH}

# Thirteenth step of the Test, Click on the EXCEL export button

    Click Element    ${EXPORT_TO_EXCEL}














    