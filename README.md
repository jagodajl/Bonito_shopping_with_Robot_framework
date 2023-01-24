This project enables automatic shopping on the Bonito.pl website. It is based on the Robot Framework (source automation framework) with SeleniumLibrary (Web testing library that uses the popular Selenium tool). 
The application automatically performs the following actions:
- opening a specific website in the browser
- searching for products
- viewing products
- adding products to a cart
- checking out with the purchase
- logging in to the website

To run the project, please type "robot -d Results Tests/Bonito.robot"  into terminal. It is also necessary to install the appropriate WebDriver for the current version of your web browser. If you want to see automatic login performed by your PC, please complete your test login and password in the Logingpage.robot file (lines 5 and 6). 

If you want to view the report and screenshot of my tests, you can find them in the "bonito_robot/Results" folder.