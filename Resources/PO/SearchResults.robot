*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains            Wyniki wyszukiwania „Harry Potter and the Chamber of Secrets. Gryffindor Edition”

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Link                          xpath = //*[@id="results0"]/div/div/div[2]/a