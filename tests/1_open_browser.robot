*** Settings ***
Documentation    Testing the Blue Water Pool Task and Equipment Registry System First Step Open the Application in The Browser
Resource    common_resources.resource
Library    SeleniumLibrary



*** Keywords ***
Open Application
    Open Browser    ${URL_HOMEPAGE}    ${BROWSER}
    Maximize Browser Window


*** Test Cases ***
First Step Of The Test Open The Application In The Browser
    Open Application
    [Teardown]    Close Browser
