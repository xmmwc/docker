FROM arm32v7/node:carbon

# install miio
RUN node install miio -g

# start discover device
CMD ["miio","discover"]
