*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Click element                   xpath=//*[@id="basketIcon"]/a/img
    Wait Until Page Contains        Do zapłaty

Proceed to Checkout
    click element                   css=#basketForm > div.container.p-3.pt-5 > div > div > button