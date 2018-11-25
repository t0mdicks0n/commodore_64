FROM amd64/ubuntu:16.04
WORKDIR /usr/src/app
# Install github
RUN apt-get update
RUN echo "y" | apt-get install git-core
RUN echo "y" | apt-get install build-essential
# Download the cbmbasic repo
RUN git clone https://github.com/mist64/cbmbasic.git
RUN cd cbmbasic/ && make
RUN chmod +x ./cbmbasic/cbmbasic
ENTRYPOINT ["./cbmbasic/cbmbasic"]