*** Settings ***
Suite Setup      Run Tests    ${EMPTY}    standard_libraries/builtin/on/on.robot
Force Tags       regression    pybot    jybot
Resource         atest_resource.robot

*** Test Cases ***
On
    Check Test Case    ${TESTNAME}

Off
    Check Test Case    ${TESTNAME}    FAIL    Multiple keywords with name 'Foo' found.\nGive the full name of the keyword you want to use.\nFound: 'A.Foo' and 'B.Foo'
