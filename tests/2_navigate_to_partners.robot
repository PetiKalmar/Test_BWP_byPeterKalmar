Input Text    ${ADDTOOL_NAME}    ${first_tool_manufacturer} ${first_tool_model}
    Input Text    ${ADDTOOL_CUSTOMER}    ${first_name} ${last_name}
    Sleep    2s
    Input Text    ${ADDTOOL_DESC}    ${first_tool_desc}
    Input Text    ${ADDTOOL_COMM}    ${first_tool_comm}

    Sleep    3s
    
    # Ninth Step of the Test, Request Data for two Devices via the API
