# before running this suite.

*** Settings ***
Resource               ../Resourceorg/orgcommon.robot
Library                DateTime
Library                String
Library                QWeb
Library                QForce
Suite Setup            Setup Browser
Suite Teardown         End suite

*** Test Cases ***
Search SystemUsers
    [Tags]             Ssysusr
    [Documentation]    Search system user for the grid
    Appstate           Home
    ClickText          Admin
    TypeText           //div[@class\='oxd-form-row']//input[@class\='oxd-input oxd-input--active']    Harshil
    DropDown           //div[@class\='oxd-select-wrapper']                        ESS
    #TypeText           \"User\ Role\"                        ESS
    ClickText          Search
    Sleep              3s

