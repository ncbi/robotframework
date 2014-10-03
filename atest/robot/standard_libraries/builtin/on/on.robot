*** Settings ***
Library  A.py
Library  B.py

*** Test Cases ***

On
    On  A
    ${val} =  Foo
    Should Be Equal  ${val}  Val A

Off
    On  A
    Off
    ${val} =  Foo
