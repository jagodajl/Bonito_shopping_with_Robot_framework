*** Settings ***
Documentation  This is some basic info about the whole suite
Resource            ../Resources/Common.robot  # for Setup & Teardown
Resource            ../Resources/BonitoApp.robot  # for lower level keywords in test cases
Test Setup          Common.Begin Web Test
Test Teardown       Common.End Web Test

*** Variables ***
${BROWSER} =        chrome
${START_URL} =      https://bonito.pl/
${SEARCH_TERM} =    Harry Potter and the Chamber of Secrets. Gryffindor Edition

*** Test Cases ***
Logged out user can search for products
    [Tags]  Current
    BonitoApp.Search for Products

Logged out user can view a product
    BonitoApp.Search for Products
    BonitoApp.Select Product from Search Results

Logged out user can add product to cart
    BonitoApp.Search for Products
    BonitoApp.Select Product from Search Results
    BonitoApp.Add Product to Cart

Logged out user check out
    BonitoApp.Search for Products
    BonitoApp.Select Product from Search Results
    BonitoApp.Add Product to Cart
    BonitoApp.Begin Checkout

User can log in
    BonitoApp.Login

