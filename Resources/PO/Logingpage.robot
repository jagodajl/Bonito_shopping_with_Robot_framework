*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN} =      #Your login
${PASSWORD} =   #Your password

${LOGIN_FIELD} =        id=accountLogInEmail
${PASSWORD_FIELD} =     id=accountLogInPassword

*** Keywords ***
Go to the login page
    Click element    css=#topPosition > div.w-100.m-0.p-0.d-flex.justify-content-center > div > div.row.d-flex.justify-content-start.justify-content-md-around.justify-content-lg-start.align-items-center.header.m-0 > div.col-2.col-lg-1.order-3.order-md-last.order-lg-4.d-flex.justify-content-end.align-items-center.position-relative.my-2.mb-1 > a > img

Verify login page loaded
    Wait Until Page Contains    Zaloguj się

Login With Valid Credentials
    Input Text           ${LOGIN_FIELD}         ${LOGIN}
    Input Text           ${PASSWORD_FIELD}      ${PASSWORD}
    Click button        css=body > div:nth-child(4) > form > div > div:nth-child(1) > div.row > div.col-12.col-lg-5.d-flex.justify-content-center.justify-content-lg-end > button

Verify user logged in
    Wait until page contains        Dane osobowe


