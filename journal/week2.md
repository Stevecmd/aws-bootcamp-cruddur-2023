# Week 2 — Distributed Tracing
This was technically the third week of the Bootcamp. 

(The Hyperlinks in the table below link to the training videos)
<hr/>

| Homework      | Completed     | Not Completed  |
| ------------- |:-------------:| -----:|
| [Create your Free HoneyComb.io account](https://www.youtube.com/watch?v=7IwtVLfSD0o&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=10)   | ✔ |  |
| [Create your Free RollBar account](https://www.youtube.com/watch?v=Lpm6oAP3Fb0&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=11)  | ✔     |    |
| [Watch Week 2 Live-Stream Video](https://www.youtube.com/watch?v=2GD9xCzRId4&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=30) | ✔      |   |
| [Watch Chirag Week 2 - Spending Considerations (Coming Soon)](https://www.youtube.com/watch?v=2W3KeqCjtDY )|✔      |   |
| [Watched Ashish's Week 2 - Observability Security Considerations](https://www.youtube.com/watch?v=bOf4ITxAcXc&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=31)|✔      |   |
| [Instrument Honeycomb with OTEL](https://www.youtube.com/watch?v=2GD9xCzRId4&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=30)|    ✔  |   |
| [Instrument AWS X-Ray](https://www.youtube.com/watch?v=n2DTsuBrD_A&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=32)  | ✔   |   |
| [Configure custom logger to send to CloudWatch Logs](https://www.youtube.com/watch?v=ipdFizZjOF4&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=33) |✔      |   |
| [Integrate Rollbar and capture and error](https://www.youtube.com/watch?v=xMBDAb5SEU4&list=PLBfufR7vyJJ7k25byhRXJldB5AiwgNnWv&index=35)| ✔   |   |


>>**Below is a step by step break down of my work. Use the Table of contents to jump to specific sections**

Table of contents
=================



<!--ts-->
   * [Honeycomb environment](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#honeycomb-environment)
   * [Instrument Honeycomb with OTEL](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#instrument-honeycomb-with-otel)
   * [Open Telemetry (OTEL) installation](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#open-telemetry-otel-installation)
   * [Updating App.py to include HoneyComb configuration](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#updating-apppy-to-include-honeycomb-configuration)
   * [HoneyComb instrumentation](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#honeycomb-instrumentation)
   * [Setting up the HoneyComb API Key](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#setting-up-the-honeycomb-api-key)
   * [Backend Logs](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#backend-logs)
   * [Automating of the opening of backend ports](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#automating-of-the-opening-of-backend-ports)
   * [Cruddur returning API endpoint](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#cruddur-returning-api-endpoint)
   * [API endpoint on terminal](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#api-endpoint-on-terminal)
   * [Succesfull connection - JSON data](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#succesfull-connection---json-data)
   * [Whoami-glitch.me](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#whoami-glitchme)
   * [OTEL configuration](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#otel-configuration)
   * [Working HoneyComb Queries](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#working-honeycomb-queries)
   * [HoneyComb Traces](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#honeycomb-traces)
   * [HoneyComb Trace Review](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#honeycomb-trace-review)
   * [Adding a span in homeactivities](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#adding-a-span-in-homeactivitiespy)
   * [HoneyComb trace of the New Span](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#honeycomb-trace-of-the-new-span)
   * [Creating a custom Span](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#creating-a-custom-span)
   * [Creating a query on HoneyComb](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#creating-a-query-on-honeycomb)
   * [Running Traces on HoneyComb](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#running-traces-on-honeycomb)
   * [Traces report on mock data](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#traces-report-on-mock-data)
   * [Custom Trace](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#custom-trace)
   * [New Query](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#new-query)
   * [Query duration heatmap](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#query-duration-heatmap)
   * [Magnifying the Query results](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#magnifying-the-query-results)
   * [X-Ray](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#x-ray)
   * [Adding X-Ray to requirements](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#adding-x-ray-to-requirements)
   * [Additional ports -> x-ray daemon](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#additional-ports---x-ray-daemon)
   * [X-Ray Install](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#x-ray-install)
   * [X-Ray Group ARN on AWS](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#x-ray-group-arn-on-aws)
   * [RollBar](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#rollbar)
   * [Rollbar account creation](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#rollbar-account-creation)
   * [Selecting Flask as the app type in Rollbar](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#selecting-flask-as-the-app-type-in-rollbar)
   * [Adding Rollbar support - Blinker](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#adding-rollbar-support---blinker)
   * [Creating a Logger on the backend](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#creating-a-logger-on-the-backend)
   * [Testing access to the Rollbar page](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#testing-access-to-the-rollbar-page)
   * [Setting the Rollbar Access token](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#setting-the-rollbar-access-token)
   * [Setting the Rollbar Access token in Docker](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#setting-the-rollbar-access-token-in-docker)
   * [Accessing the test Rollbar webpage](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#accessing-the-test-rollbar-webpage)
   * [Rollbar Logs Success](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#rollbar-logs-success)
   * [Rollbar Report](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#rollbar-report)
   * [Rollbar Logged occurences](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#rollbar-logged-occurences)
   * [Rollbar Error Report](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#rollbar-error-report)
   * [Rollbar Error Report Specifics](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#rollbar-error-report-specifics)
   
<!--te-->


## Honeycomb environment

![Creating the Honeycomb environment](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Honeycombenvironment.JPG)

## Instrument Honeycomb with OTEL



## Open Telemetry (OTEL) installation
![Installing OTEL](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Installing%20open%20telemetry.JPG)


## Updating App.py to include HoneyComb configuration
![App.py](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/apppy%20update.JPG)


## HoneyComb instrumentation
![HoneyComb instrumentation](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Honeycomb%20instrumentation.JPG)


## Setting up the HoneyComb API Key
![HoneyComb API Key](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Honeycomb%20API%20Key%20set.JPG)


## Backend Logs
![Logs from the Backend](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/backend%20view%20logs.JPG)


## Automating of the opening of backend ports
![Automating opening of backend ports](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/ports%20open%20on%20restart.JPG)


## Cruddur returning API endpoint
![API endpoint](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/port%20open%20auto.JPG)

## API endpoint on terminal
![API endpoint](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/api%20endpoint%20sample%201.JPG)


## Succesfull connection - JSON data
![JSON data](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/backend%20json%20data.JPG)


## Whoami-glitch.me
![WhoAmI](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Honeycomb%20whoami.JPG)


## OTEL configuration
![Configuring OTEL on Gitpod](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/OTEL%20configuration.JPG)


## Working HoneyComb Queries
![Query dashboard on HoneyComb](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/working%20honeycomb.JPG)


## HoneyComb Traces
![Sample recent traces on HoneyComb](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/recent%20traces.JPG)


## HoneyComb Trace Review
![Sample recent traces on HoneyComb](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/review%20trace.JPG)


## Adding a span in homeactivities
![Span creation](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/adding%20a%20span.JPG)


## HoneyComb trace of the New Span
![Span Trace](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Recent%20traces%202%20spans.JPG)


## Creating a custom Span
![Custom Span attributes](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/attributes%20for%20custom%20span.JPG)


## Creating a query on HoneyComb
![HoneyComb Query](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/honeycomb%20query.JPG)


## Running Traces on HoneyComb
![HoneyComb Traces](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/traces.JPG)


## Traces report on mock data
![Trace Report](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/specific%20trace.JPG)


## Custom Trace
![Trace Report on mock data](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/trace%20for%20app..JPG)

## New Query
![App result length exists query results](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/new%20query%20using%20app%20result%20length%20exists.JPG)


## Query duration heatmap
![Heatmap of result length exists query](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/heatmap%20of%20duration%20query%20results.JPG)


## Magnifying the Query results
![Magbifying query results](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Magnifying%20results.JPG)

# X-Ray
## Adding X-Ray to requirements
![X-Ray config in requriements](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/xray%20in%20requirements.JPG)

## Additional ports -> x-ray daemon
![Adding additional ports for the x-ray daemon](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Add%20additional%20ports.JPG)

## X-Ray Install
![X-Ray install](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Installing%20x-ray.JPG)

## X-Ray Group ARN on AWS
![X-Ray Group / Permissions on AWS](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/x-ray%20create%20group.JPG)

# RollBar
## Rollbar account creation
![Rollbar Account](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Rollbar%20account%20creation.JPG)

## Selecting Flask as the app type in Rollbar
![Flask selection](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/selecting%20flask%20sdk%20in%20rollbar.JPG)

## Adding Rollbar support - Blinker
![Blinker](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/install%20requirements%20blinker.JPG)

## Creating a Logger on the backend
![Logger for Rollbar](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Logger.JPG)

## Testing access to the Rollbar page
![Rollbar working webpage](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Rollbar%20test.JPG)

## Setting the Rollbar Access token
![Rollbar tokens in backend flask](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Setting%20Rollbar.JPG)

## Setting the Rollbar Access token in Docker 
![Rollbar tokens in Docker compose](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/setting%20rollbar%20access%20token%20in%20docker%20compose.JPG)

## Accessing the test Rollbar webpage 
![Test page - Rollbar](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Rollbar%20test%202.JPG)

## Rollbar Logs Success
![Rollbar Logs](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/rollbar%20success.JPG)

## Rollbar Report
![Rollbar report](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/rollbar%20report.JPG)

## Rollbar Logged occurences
![Logged occurences](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/rollbar%20occurences.JPG)

## Rollbar Error Report
![Rollbar error report](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Error%20logged%20on%20RollBar.JPG)

## Rollbar Error Report Specifics
![Rollbar error report specifics](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Rollbar%20error%20log.JPG)
<hr/>

$${\color{green}The End}$$