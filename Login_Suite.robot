*** Settings ***
Library           ../../usr/lib/python2.7/site-packages/robot/libraries/Telnet.py    prompt=>    default_log_level=DEBUG    # Telnet Built-in Library

*** Variables ***
${PORT}           7003

*** Test Cases ***
valid login
    open connection    10.130.98.13    port=${PORT}    timeout=5
    Set Newline    \n
    List files    options=-lh
    List files    path=/tmp    options=-l

*** Keywords ***
List files
    [arguments]    ${path}=.    ${options}=
    Execute command    ls ${options} ${path}
