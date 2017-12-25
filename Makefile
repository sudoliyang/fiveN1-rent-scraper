GOCMD=go
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
GORUN=$(GOCMD) run
GOCLEAN=$(GOCMD) clean

all: test

test:
	echo 'BOMB!'

run:
	$(GORUN) ./_example/main.go

race_detect:
	$(GORUN) -race ./_example/main.go

install:
	$(GOGET) github.com/PuerkitoBio/goquery
	$(GOGET) github.com/google/go-querystring/query
	$(GOGET) github.com/vinta/pangu

clean:
	$(GOCLEAN) -x -i ./...
