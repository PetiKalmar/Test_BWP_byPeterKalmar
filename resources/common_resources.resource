*** Settings ***
Library    SeleniumLibrary

*** Variables ***

# URLs
${URL_HOMEPAGE}    https://bwpool.azurewebsites.net/#URLs

# Locators
${PARTNERS_BUTTON}    //a[contains(.,'Partnerek')]

# Other Variables
${BROWSER}    Chrome