# Week 0 — Billing and Architecture

First session on Saturday 2/11/2023 (9.00pm - 10.00pm EAT)
We had the first session where the course insctructors introduced themselves and Andrew (@andrewbrown) gave a high level overview of the learning outcomes of the 
course and the deliverables, expectations that need to be achieved on a weekly basis. There was some emphasis of going out of your way to really dive deep
into the project considering there is a lot of scope in the underlying architecture but the instructions remain relatively simple to accomodate all skill 
levels. 

## Logical Diagram

We set up accounts on the lucid app and were shown how to get resources and come up with the Logical diagram.
![Logical Architectural Diagram](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%200/Cruddur%20-%20Conceptual%20Diagram.jpeg)
- [Live Logical Diagram as shown above on Lucid chart](https://lucid.app/lucidchart/cd526c7d-0a59-4b3a-b61a-ef5e019293fe/edit?page=0_0&invitationId=inv_5ba96d4e-22e1-4db8-84b5-5fbef5a1739c#)

## Napkin design

Chris Williams (@mistwire) took us through the process of coming up with the architecture. We were also introduced to the napkin / tissue method of 
coming up with architecture which is basically drawing out your architecture at a high level but in a way whose conceptual flow makes sense.

![Napkin design](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%200/Cruddur%20-%20Napkin%20design%20main.JPG)

Margaret (@Margaretvaltie) went through the Project outline and gave a presentation of the flow of a customer engagement when you are tasked with assisting a client. It involved a presentation mimicking a typical interaction with a client and how to lead the conversation so as 
to get all the information necessary to start architecting.

We were tasked with completing the homework challenges for the week.

## Homework challenges: 2/13/2023 Monday.
Watched and completed the tasks in the video: Week 0 - Generate credentials, AWS CLI, Budget and Billing Alarm via CLI.
Tasks:
- Created the Cruddur Logical Architectural diagram and napkin design.
- Created a Budget to track my spend and put a fixed amount of $10. 
- Activated the AWS cost allocation tags.
- Investigated my costs through cost explorer.
- Checked out the Free tier services and juxtaposed them against the trial services.
- Created a new User with CLI privileges. The user is configured with MFA, Access keys and access policies.
- Configured Gitpod and also set the theme to dark mode.
- Configured Env vars in Gitpod; every time the gitpod environment starts, it will automatically set up a new environment with my 
    preconfigured credentails.
- Confirmed that the AWS CLI is working and it is indeed displaying the expected user.
- Created an AWS Budget via the CLI.
- Enabled Billing and created a billing alarm via CLI.
- Created a tag via the CLI.

NB: "aws --cli-auto-prompt" and 
    "aws sts get-caller-identity" which came in handy.
