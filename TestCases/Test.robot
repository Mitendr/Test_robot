*** Settings ***
Library    SeleniumLibrary
Resource    ../Resorces/Login_resource.robot

*** Variables ***
${url}      https://demo.nopcommerce.com/
${browser}      Chrome
${Fname}    Test
${Lname}    Xiao
${Email}    testxiao@gmail.com
${Day}      13
${Month}    October
${Year}     1997
${Pass}     test@123
${ConfPass}     test@123
*** Test Cases ***
LoginTest
    open my browser
    Register
    Select_gender
    Enter_FName    ${Fname}
    Enter_Lname    ${Lname}
    DOB    ${Day}   ${Month}    ${Year}
    Enter_Email     ${Email}
    NewsLetter
    Passward    ${Pass}     ${ConfPass}
    Button_register
    close_all_brows


