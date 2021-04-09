# Practical-Project

Cloud Native Practical Project

# Contents: #
1. [Introduction](#Introduction)
2. [Objective](#Objective)
3. [Architecture](#Architecture)
4. [Risk Assessment](#Risk-Assesment)
5. [Jira Board](#Jira-Board)

# Introduction

In this project, I will be deploying a working application.
The application will already be provided and I will create a Continuous integration pipeline that utilizes all of the tools and technologies highlighted in the Architecture section.

# Objective

The objective of the app is to efficiently deploy a flask-app. I will be using terraform to create a VPC through amazon web service.

To efficiently deploy the app, I will be using a number tools to automate the deployment.

# Architecture

I created a graph of the tools I will be using to create this project and how they interact with eachother. This helps me understand the purpose of each tool and the role it plays when deploying the app.

* Version Control System: GitHub
* CI Server: Jenkins
* Cloud Server: AWS
* Containerisation: Docker
* Reverse Proxy and Load Balance: NGINX
* Orchestration Tool: Kubernetes
* Infrastucture Management: Terraform


![image](https://user-images.githubusercontent.com/78487653/114124437-5de62600-98ec-11eb-99e3-358baa76bd58.png)




# Risk Assessment

Link to the full risk assessment can be found here:

[Risk Assessment](https://docs.google.com/spreadsheets/d/15b4NV8_hYK5qgIZLMVYyuaRH7KrbpBTeHN9K1fcmpyo/edit?usp=sharing)

The screenshot of the risk assessment shows the potential risks that could occur from deploying an app. It is important to assess these risks and plan ahead by implementing features that could prevent it.

![image](https://user-images.githubusercontent.com/78487653/114124515-8ec65b00-98ec-11eb-82aa-79c68f11c495.png)


# Jira Board

Jira is one of the leading technologies in agile project management. 
I used a Jira board during the planning part of the application. This helped me plan out the tasks I had to do to complete my project. I was able to create user stories with smaller tasks attached to each. By splitting the tasks up into smaller tasks, I was able to estimate the length of time each user story and sprint will take to complete.

To each user story, I added a label which represents MoSCoW prioritisations.
M - Must have,
S - Should have,
C - Could have,
W - Would like to have.

The following is a screenshot of on of the sprints created using Jira:

![image](https://user-images.githubusercontent.com/78487653/114124635-c9c88e80-98ec-11eb-9f23-c8a5c918cfe0.png)











