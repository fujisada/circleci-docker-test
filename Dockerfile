FROM centos:7

RUN curl "https://storage.googleapis.com/golang/go1.8.1.linux-amd64.tar.gz" > "/opt/go1.8.1.linux-amd64.tar.gz"
RUN tar -C /usr/local -xzf /opt/go1.8.1.linux-amd64.tar.gz

# set PATH
RUN echo "export GOPATH=$HOME/go" > /etc/profile.d/gopath.sh
RUN echo "export PATH=$GOPATH/bin:/usr/local/go/bin/:$PATH" >> /etc/profile.d/gopath.sh
