FROM google/golang
MAINTAINER Mateusz Szczap <mati@sz.home.pl>
RUN go get github.com/revel/cmd/revel
RUN mkdir -p $GOPATH/src/github.com/matiwinnetou
RUN cd $GOPATH/src/github.com/matiwinnetou/; git clone https://github.com/matiwinnetou/go-revel-mobile-cars-adstream.git
WORKDIR $GOPATH 
EXPOSE 9000 
CMD revel run github.com/matiwinnetou/go-revel-mobile-cars-adstream prod
