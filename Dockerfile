FROM arm32v7/node:carbon


# install miio
RUN node install miio -g

CMD ["miio","discover"]
