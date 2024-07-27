FROM quay.io/teamolduser/docker

COPY . /root/macksyn
WORKDIR /root/macksyn
RUN npm install --network-concurrency 1
EXPOSE 8000
CMD ["npm", "start"]
