FROM quay.io/soketi/soketi:0.17-16-alpine
WORKDIR "/app"

COPY ecosystem.config.js .
RUN npm install npm pm2 -g

ENTRYPOINT ["pm2-runtime", "/app/ecosystem.config.js"]
