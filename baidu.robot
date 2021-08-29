*** Settings ***
Resource          keywords.txt
Library           RequestsLibrary
Library           Collections

*** Test Cases ***
test
    ${Content-Type}    Create Dictionary    Content-Type=application/json
    create session    api    https://nmsl.shadiao.app    ${Content-Type}
    ${resp}    Get Request    api    /api.php?level=min&lang=zh_cn
    log    ${resp.content}
