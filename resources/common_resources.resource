*** Settings ***

Documentation    Testing the Blue Water Pool Task and Equipment Registry System
Library    SeleniumLibrary
Library    RequestsLibrary


*** Variables ***

# URLs
${URL_HOMEPAGE}    https://bwpool.azurewebsites.net/#URLs
${URL_API_USERS}    https://random-data-api.com/api/users/random_user
${URL_API_DEVICE}    https://random-data-api.com/api/device/random_device

# Locators
${PARTNERS_BUTTON_XPATH}    //a[contains(.,'Partnerek')]
${ADD_CUSTOMER_XPATH}    //span[@class='e-add e-icons e-btn-icon e-icon-left']
${CUSTOMER_NAME_XPATH}    //input[@id='name']
${CUSTOMER_MAIL_XPATH}    //input[@id='email']
${CUSTOMER_PHONE_XPATH}    //input[@class='e-control e-numerictextbox e-lib e-input']
${CUSTOMER_COMMENT_XPATH}    //input[@id='comment']
${CUSTOMER_DATA_SAVE_XPATH}    //button[@class='e-control e-btn e-lib e-control e-btn e-lib e-primary e-flat']
${FACILITY_BUTTON_XPATH}    //a[contains(.,'Telephelyek')]
${ADD_FACILITY_XPATH}    //span[@class='e-add e-icons e-btn-icon e-icon-left']
${FACILITY_CUSTOMER_BUTTON_XPATH}    //span[@class='e-input-group-icon e-ddl-icon e-icons e-ddl-disable-icon']
${FACILITY_CUSTOMER_TEXTBOX_XPATH}    //input[@class='e-control e-combobox e-lib e-input']
${FACILITY_CITY_XPATH}    //input[@id='varos']
${FACILITY_ZIP_XPATH}    //input[@id='zip']
${FACILITY_STREET_XPATH}    //input[@id='utca']
${FACILITY_HOUSE_XPATH}    //input[@id='szam']
${FACILITY_DATA_SAVE_XPATH}    //button[@class='e-control e-btn e-lib e-control e-btn e-lib e-primary e-flat']
${FACILITY_CLICK_HELP_XPATH}    //div[@id='Grid_dialogEdit_wrapper_title']
${FACILITY_CLICK_CHOOSE_XPATH}    //li[@class='e-list-item e-item-focus']
${DEVICE_FACILITY_CLICK_HELP_XPATH}    //li[@class='e-list-item e-item-focus']
${DEVICE_BUTTON_XPATH}    //a[contains(.,'Eszközök')]
${ADD_DEVICE_XPATH}    //span[@class='e-add e-icons e-btn-icon e-icon-left']
${DEVICE_NAME_XPATH}    //input[@id='name']
${DEVICE_CUSTOMER_BUTTON_XPATH}    //*[@id="Grid_dialogEdit_wrapper_dialog-content"]/div/form/table/tbody/tr[3]/td/span/span[2]
${DEVICE_CUSTOMER_TEXTBOX_XPATH}    //input[@class='e-control e-combobox e-lib e-input']
${DEVICE_FACILITY_BUTTON_XPATH}    //*[@id="Grid_dialogEdit_wrapper_dialog-content"]/div/form/table/tbody/tr[4]/td/span/span[2]
${DEVICE_FACILITY_TEXTBOX_XPATH}    [placeholder='Telephely']
${DEVICE_DESCRIPTION_XPATH}    //textarea[@id='Desc']
${DEVICE_COMMENT_XPATH}    //textarea[@id='Comm']
${DEVICE_DATA_SAVE_XPATH}    //button[@class='e-control e-btn e-lib e-control e-btn e-lib e-primary e-flat']
${DEVICE_FACILITY_CHOOSE_XPATH}    //h4[.='Eszköz']
${DEVICE_CHOOSE_XPATH}    //li[@class='e-list-item e-item-focus']
${DEVICE_CLICK_HELP_XPATH}    //div[@id='Grid_dialogEdit_wrapper_dialog-content']
${EXPORT_TO_EXCEL}    //span[.='Excel Export']

# Other Variables
${BROWSER}    Chrome

