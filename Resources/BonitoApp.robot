*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/Buy.robot
Resource  ../Resources/PO/Logingpage.robot



*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    Buy.Verify Page Loaded

Login
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Logingpage.Go to the login page
    Logingpage.Verify login page loaded
    Logingpage.Login With Valid Credentials
    Logingpage.Verify user logged in
