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
    Sleep              3s
    
   