*** Settings ***
Library    SeleniumLibrary
Variables    ../Pages/locators.py

*** Variables ***

*** Keywords ***
Hover
    drag and drop
    open context menu
    double click element
    execute javascript    window.scrollTo(0,1500)
    scroll element into view