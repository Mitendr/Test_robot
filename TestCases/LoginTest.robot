*** Settings ***
Library    SeleniumLibrary
Library    DataDriver   ..//Data//TestData.xlsx
Resource    ../Resorces/Login_resource.robot
Suite Setup    open my browser
Suite Teardown    close_all_brows
Test Template    Invalid login


*** Test Cases ***
LoginTest with excel ${Username}      ${Password}



*** Keywords ***
Invalid login
    [Arguments]    ${Username}      ${Password}
    LogIN
    LogIN_Email     ${Username}
    LogIN_Pass      ${Password}
    click_login
