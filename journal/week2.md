# Week 2 — Distributed Tracing
This was the third week of the Bootcamp. 

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
   * [Distributed Tracing](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#week-2--distributed-tracing)
   * [Honeycomb environment](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#honeycomb-environment)
   * [Instrument Honeycomb with OTEL](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#instrument-honeycomb-with-otel)
   * [Open Telemetry (OTEL) installation](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#open-telemetry-otel-installation)
   * [Updating App.py to include HoneyComb configuration](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#updating-apppy-to-include-honeycomb-configuration)
   * [HoneyComb instrumentation](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#honeycomb-instrumentation)
   * [Adding additional ports for the x-ray daemon](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/week2.md#honeycomb-instrumentation-1)
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


## Additional ports -> x-ray daemon
![Adding additional ports for the x-ray daemon](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Add%20additional%20ports.JPG)


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


## Adding a span in homeactivities.py
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


## X-Ray Install
![X-Ray install](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/Installing%20x-ray.JPG)

## X-Ray Group ARN on AWS
![X-Ray Group / Permissions on AWS](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/x-ray%20create%20group.JPG)


## X-Ray Group ARN on AWS
![X-Ray Group / Permissions on AWS](https://github.com/Stevecmd/aws-bootcamp-cruddur-2023/blob/main/journal/Week%202/x-ray%20create%20group.JPG)