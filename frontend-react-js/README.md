## Frontend React JS

This is the main repo for the front-end of the Cruddur social media app.
We are using React.

Once environment is set up deploy with:
aws ecs register-task-definition --cli-input-json file://aws/task-definitions/backend-flask.json
aws ecs create-service --cli-input-json file://aws/json/service-backend-flask.json

aws ecs register-task-definition --cli-input-json file://aws/task-definitions/frontend-react-js.json
aws ecs create-service --cli-input-json file://aws/json/service-frontend-react-js.json