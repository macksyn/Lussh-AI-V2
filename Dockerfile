FROM quay.io/teamolduser/docker

COPY . /root/macksyn
WORKDIR /root/macksyn
RUN yarn install --network-concurrency 1
EXPOSE 8000
CMD ["yarn", "start"]
