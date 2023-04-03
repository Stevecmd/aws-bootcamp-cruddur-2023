# Week 5 — DynamoDB and Serverless Caching
This was technically the sixth week of the Bootcamp. 

(The Hyperlinks in the table below link to the training videos)

**Todo Checklist:**
- [x] [FREE AWS Cloud Project Bootcamp (Week 5) - NoSQL and Caching](https://www.youtube.com/watch?v=5oZHNOaL8Og)
- [x] [Week 5 DynamoDb Utility Scripts](https://www.youtube.com/watch?v=pIGi_9E_GwA)
- [x] [Week 5 Implement Conversations with DynamoDB](https://www.youtube.com/watch?v=dWHOsXiAIBU)
- [x] [Week 5 DynamoDB Stream](https://www.youtube.com/watch?v=zGnzM_YdMJU)
- [x] [How to use Amazon DynamoDB for security and speed](https://www.youtube.com/watch?v=gFPljPNnK2Q&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=53)
- [x] [Implement Schema Load Script](https://www.youtube.com/watch?v=pIGi_9E_GwA&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=52)
- [x] [Implement Seed Script](https://www.youtube.com/watch?v=pIGi_9E_GwA&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=52)
- [x] [Implement Scan Script](https://www.youtube.com/watch?v=pIGi_9E_GwA&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=52)
- [x] [Implement Pattern Scripts for Read and List Conversations](https://www.youtube.com/watch?v=pIGi_9E_GwA&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=52)
- [x] [Implement Update Cognito ID Script for Postgres Database](https://www.youtube.com/watch?v=dWHOsXiAIBU&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=54)
- [x] [Implement (Pattern A) Listing Messages in Message Group into Application](https://www.youtube.com/watch?v=dWHOsXiAIBU&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=54)
- [x] [Implement (Pattern B) Listing Messages Group into Application](https://www.youtube.com/watch?v=dWHOsXiAIBU&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=54)
- [x] [Implement (Pattern B) Listing Messages Group into Application](https://www.youtube.com/watch?v=dWHOsXiAIBU&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=54)
- [x] [Implement (Pattern C) Creating a Message for an existing Message Group into Application](https://www.youtube.com/watch?v=dWHOsXiAIBU&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=54)
- [x] [Implement (Pattern D) Creating a Message for a new Message Group into Application](https://www.youtube.com/watch?v=dWHOsXiAIBU&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=54)
- [x] [Implement (Pattern E) Updating a Message Group using DynamoDB Streams](https://www.youtube.com/watch?v=zGnzM_YdMJU&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=55)
- [] Complete 100% of the tasks

<hr/>


|    | Table of contents - Steps taken to complete Week 5 assignments                                                                                                                                                                         |
|----|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1  | [Refactoring my files for better structure](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/Refactoring%20files.JPG)                                |
| 2  | [Updating schema load](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/Updating%20schema-load.JPG)                                                |
| 3  | [Dynamo DB refactor List tables](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/list%20tables.JPG)                                               |
| 4  | [DynamoDB - Schema load](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/schema%20load.JPG)                                    |
| 5  | [List loaded table via CLI](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/list-tables%202.JPG)                                                  |
| 6  | [Create Database](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/create%20DB.JPG)                           |
| 7  | [Schema - load on the DB](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/schema%20load%202.JPG)                                              |
| 8  | [Seeding the Database](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/seed.JPG)                                  |
| 9  | [Dynamo DB seed](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/ddb%20seed.JPG)                                                     |
| 10 | [Dynamo DB List tables](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/list%20tables.JPG)                                  |
| 10 | [Dynamo DB scan operation](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/scan.JPG)                                  |
| 10 | [Dynamo DB - get conversation](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/get-conversation.JPG)                                  |
| 10 | [Show all users](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/DB%20select%20all%20users.JPG)                                  |
| 10 | [Dynamo DB - list conversations](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/list%20conversations.JPG)                                  |
| 10 | [Setting up Flask to run on startup](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/Adding%20flask%20to%20gitpod%20requirements.JPG)                                  |
| 10 | [Seeding Dynamo DB](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/seed%20ddb.JPG)                                  |
| 10 | [Dynamo DB schema laod and list tables](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/schema%20load%20and%20list%20tables.JPG)                                  |
| 10 | [Dynamo DB seed](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/bin%20ddb%20seed.JPG)                                  |
| 10 | [Listing registered users from Database](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/showing%20users%20in%20db.JPG)                                  |
| 10 | [Listing Cognito registered users](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/cognito%20list%20users.JPG)                                  |
| 10 | [Testing Database Setup](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/run%20db%20setup.JPG)                                  |
| 10 | [Confirmation that all scripts are executable](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/all%20scripts%20executable.JPG)                                  |
| 10 | [Activating POSTGres DB and deactivating Production DB (Dynamo DB)](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/activate%20postgres%20disable%20prod.JPG)                                  |
| 10 | [Running in Developer mode (POSTGres DB)](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/running%20in%20dev%20mode%20now.JPG)                                  |
| 10 | [List of registered Cognito User ID's](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/cognito%20user%20ids%20search.JPG)                                  |
| 10 | [Logging in](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/login%20attempt.JPG)                                  |
| 10 | [Successfull login](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/succesfull%20login.JPG)                                  |
| 10 | [Messages page before seeding data](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/messages%20page%20loads.JPG)                                  |
| 10 | [Successfull Cognito UUID update in terminal](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/updated%20cognito%20uuid%20in%20terminal.JPG)                                  |
| 10 | [Debugging why no messages were showing - Not resolved yet](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/chatfix1.JPG)                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |                                                                                                                              
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |
| 10 | []()                                  |

## Refactoring my files for better structure
![Refactoring my files for better structure](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/Refactoring%20files.JPG)

## Item 2
![Updating schema load](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/Updating%20schema-load.JPG)

## Item 3
![Dynamo DB refactor List tables](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/list%20tables.JPG)

## Item 4
![DynamoDB - Schema load](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/schema%20load.JPG)

## Item 5
![List loaded table via CLI](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/list-tables%202.JPG)

## Item 6
![Create Database](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/create%20DB.JPG)

## Item 7
![Schema - load on the DB](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/schema%20load%202.JPG)

## Item 8
![Seeding the Database](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/seed.JPG)

## Item 9
![Dynamo DB seed](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/ddb%20seed.JPG)

## Item 10
![Dynamo DB List tables](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/list%20tables.JPG)

## Item 11
![Dynamo DB scan operation](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/scan.JPG)

## Item 12
![Dynamo DB - get conversation](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/get-conversation.JPG)

## Item 13
![Show all users](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/DB%20select%20all%20users.JPG)

## Item 14
![Dynamo DB - list conversations](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/list%20conversations.JPG)

## Item 15
![Setting up Flask to run on startup](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/Adding%20flask%20to%20gitpod%20requirements.JPG)

## Item 16
![Seeding Dynamo DB](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/seed%20ddb.JPG)

## Item 17
![Dynamo DB schema laod and list tables](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/schema%20load%20and%20list%20tables.JPG)

## Item 18
![Dynamo DB seed](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/bin%20ddb%20seed.JPG)

## Item 19
![Listing registered users from Database](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/showing%20users%20in%20db.JPG)

## Item 20
![Listing Cognito registered users](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/cognito%20list%20users.JPG)

## Item 20
![Testing Database Setup](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/run%20db%20setup.JPG)

## Item 20
![Confirmation that all scripts are executable](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/all%20scripts%20executable.JPG)

## Item 20
![Activating POSTGres DB and deactivating Production DB (Dynamo DB)](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/activate%20postgres%20disable%20prod.JPG)

## Item 20
![Running in Developer mode (POSTGres DB)](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/running%20in%20dev%20mode%20now.JPG)

## Item 20
![List of registered Cognito User ID's](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/cognito%20user%20ids%20search.JPG)

## Item 20
![Logging in](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/login%20attempt.JPG)

## Item 20
![Successfull login](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/succesfull%20login.JPG)

## Item 20
![Messages page before seeding data](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/messages%20page%20loads.JPG)

## Item 20
![Successfull Cognito UUID update in terminal](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/updated%20cognito%20uuid%20in%20terminal.JPG)

## Item 20
![Debugging why no messages were showing - Not resolved yet](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%205/chatfix1.JPG)

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

## Item 20
![]()

Make sure to implement last 5 min of Week 5 DynamoDb Utility Scripts: https://www.youtube.com/watch?v=pIGi_9E_GwA

git tag -a Week-5 fe7022f