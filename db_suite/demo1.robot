*** Comments ***
Table name:- Products
column:- product_id,productname,description

*** Settings ***
Library     DatabaseLibrary

Test Setup  Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db     dbPassword=12345678     dbHost=db4free.net  dbPort=3306
Test Teardown   Disconnect From Database
#Suite Setup-> For one connect and disconnect

*** Test Cases ***
TC1
    ${row_count}    Row Count    select * from Products
    Log To Console    ${row_count}
    Log     ${row_count}
    #Should Be Equal    ${row_count}    81
    
TC2
    Table Must Exist    Products
    Row Count Is Equal To X    select * from Products    81
    Row Count Is Less Than X    select * from Products    100
    Row Count Is Greater Than X    select * from Products    1
    #Row Count Is Equal To X    select * from Product where product_id=1001    1
    
TC3
    Execute Sql String    Insert into Products (product_id,productname,description) values(34567567,'hello','sdddd')
    Row Count Is Equal To X    select * from Products where product_id=34567567    1
    ${row_count}    Row Count    select * from Products
    Log To Console    ${row_count}

TC4
    Execute Sql String    update Products set productname='balaji' where product_id=34567567
    Row Count Is Equal To X    select * from Products where product_id=34567567 and productname='balaji'    1
    
TC5
    ${output}   Query    select * from Products
    Log     ${output}
    Log To Console    ${output} 

