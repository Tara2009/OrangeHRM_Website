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
    #DropDown          //div[@class\='oxd-select-wrapper']    ESS
    #TypeText          \"User\ Role\"              ESS
    #PickList          //*[@id\="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]    ESS
    ClickText          //*[@id\="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[1] 
   # ClickText          //*[@id\="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div   
    #ClickText          Admin
    ClickText          Search
    Sleep              3s

