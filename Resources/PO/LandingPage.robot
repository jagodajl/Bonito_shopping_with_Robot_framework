*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${START_URL} =      https://bonito.pl/

*** Keywords ***
Load
    Go To                       ${START_URL}

Verify Page Loaded
    Wait Until Page Contains    Polecamy
