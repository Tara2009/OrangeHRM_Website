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
    TypeText           //div[@class\='oxd-form-row']//input[@class\='oxd-input oxd-input--active']    nalim
    Sleep              2s
    #DropDown          //div[@class\='oxd-select-wrapper']         ESS
    #TypeText          \"User\ Role\"              ESS
    #PickList          //*[@id\="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]    ESS
    ClickText          //*[@id\="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[2]
    # ClickText        //*[@id\="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div
    Sleep              2s
    #ClickText          ESS
    Sleep              2s
    TypeText           //div[@class\='oxd-autocomplete-text-input oxd-autocomplete-text-input--active']//input    Nalim R P
    Sleep              2s
    ClickText          Nalim R P
    ClickText          //*[@id\="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[4]/div/div[2]
    Sleep              2s
    ClickText          Enabled
    ClickText          Search
    Sleep              3s


   
