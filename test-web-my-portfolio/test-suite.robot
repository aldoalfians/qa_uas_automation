*** Settings ***
Library           SeleniumLibrary

*** variables ***
${BROWSER}     firefox
${HOST}    http://127.0.0.1:3000


*** Test Cases ***

testcase-home
    Open Browser    ${HOST}    ${BROWSER}
    Click Element     xpath://button[@id='toggle-dark-mode']
    Click Element     xpath://button[@id='about']


testcase-about
    Open Browser    ${HOST}    ${BROWSER}
    Click Element     xpath://button[@id='toggle-dark-mode']
    Scroll Down Until End
    Click Element     xpath://button[@id='projects']

testcase-projects
    Open Browser    ${HOST}    ${BROWSER}
    Click Element     xpath://button[@id='toggle-dark-mode']
    Scroll Down Until End
    Click Element     xpath://button[@id='toggle-dark-mode']



*** Keywords ***

Scroll Down Until End
    ${previous_height}=    Execute Javascript    return document.body.scrollHeight;
    FOR  ${i}    IN RANGE    10
        Execute Javascript    window.scrollTo(0, document.body.scrollHeight);
        Sleep    1s
        ${current_height}=    Execute Javascript    return document.body.scrollHeight;
        Exit For Loop If    '${current_height}' == '${previous_height}'
        ${previous_height}=    Set Variable    ${current_height}
        Sleep    2s
    END






