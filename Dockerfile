FROM node:16.20.0
ARG DEVOPS_NAME=Administrator
EXPOSE 3000
WORKDIR /opt/
RUN git clone https://github.com/DevOps2-Fundamentals/example-app-nodejs-backend-react-frontend.git task3example
WORKDIR /opt/task3example/
RUN npm install >/dev/null 2>&1
RUN sed -i "s/Welcome to My Project/Welcome to My Project. ${DEVOPS_NAME}/" /opt/task3example/src/client/components/ExampleComponent.js
RUN npm run build >/dev/null 2>&1
CMD ["npm", "start"]
