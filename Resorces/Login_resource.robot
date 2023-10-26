*** Settings ***
Library    SeleniumLibrary
Variables    ../Pages/locators.py
*** Variables ***
${url}      https://demo.nopcommerce.com/
${browser}      Chrome
*** Keywords ***
open my browser

    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    0.5


Register
    click element    ${register_xpath}

Select_gender
    select radio button    Gender   M
Enter_FName
    [Arguments]    ${Fname}
    input text    ${name_xpath}     ${Fname}
Enter_Lname
    [Arguments]    ${Lname}
    input text      ${lastname_xpath}       ${Lname}
Enter_Email
    [Arguments]    ${Email}
    input text    ${email_xpath}    ${Email}

DOB
   [Arguments]    ${Day}    ${Month}    ${Year}
    select from list by label    ${day_xpath}       ${Day}
    select from list by label    ${month_xpath}     ${Month}
    select from list by label    ${year_xpath}      ${Year}
NewsLetter
    checkbox should be selected    Newsletter
Passward
    [Arguments]    ${Pass}      ${ConfPass}
    input text    ${pass_xpath}     ${Pass}
    input text    ${confPass_xpath}     ${ConfPass}

Button_register
    click element    ${button_register_xpath}


# Login test keyword
LogIN
    click element    ${login_xpath}

LogIN_Email
    [Arguments]    ${Username}
    input text    ${log_Email}      ${Username}

LogIN_Pass
    [Arguments]    ${Password}
    input text    ${log_pass}       ${Password}
Click_login
    click element    ${button_login}

Error_message

close_all_brows
    close all browsers




