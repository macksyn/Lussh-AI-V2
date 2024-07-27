FROM quay.io/suhailtechinfo/suhail-v2
RUN git clone https://github.com/macksyn/Lussh-AI /root/macksyn
RUN rm -rf /root/macksyn/.git
WORKDIR /root/macksyn
RUN npm install || yarn install
EXPOSE 8000
CMD ["npm","start" ] 

