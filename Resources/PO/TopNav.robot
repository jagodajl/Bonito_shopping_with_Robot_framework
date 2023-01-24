*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =   id=headerSearchInput
${TOPNAV_SEARCH_BUTTON} =   xpath=//*[@id="searchField"]/img
${SEARCH_TERM} =    Harry Potter and the Chamber of Secrets. Gryffindor Edition

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text           ${TOPNAV_SEARCH_BAR}    ${SEARCH_TERM}

Submit Search
    click element       ${TOPNAV_SEARCH_BUTTON}