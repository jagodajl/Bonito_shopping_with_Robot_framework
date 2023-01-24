*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains        Wyślemy jeszcze dzisiaj

Add to Cart
    Click element                    css=body > div.container.product_container > div.row > div.col-12.col-md-8.order-2 > div:nth-child(3) > div.col-12.col-md-12.col-lg-12.col-xl-7.pt-3 > div > div.d-flex.flex-column.flex-md-row.justify-content-center.justify-content-md-end.mt-4 > div:nth-child(2) > a > div