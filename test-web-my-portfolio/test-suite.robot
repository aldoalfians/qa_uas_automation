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





