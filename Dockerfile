FROM node:10
COPY . .
RUN npm install
RUN npm fund
RUN CI=true
CMD ["npm", "start"]
