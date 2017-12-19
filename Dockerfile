FROM alpine:latest

# Install depedencies
RUN apk update; apk add\
    bash\
    g++\
    gcc\
    make\
    openssl\
    openssl-dev\
    libffi-dev\
    python-dev\
    py-pip\
    py-setuptools\
    py-virtualenv\
    openssh\
    ca-certificates;\
    update-ca-certificates 
    
# Pull down algo
RUN wget https://github.com/trailofbits/algo/archive/master.zip;\
    unzip master.zip

# Initialize Algo
RUN cd algo-master;\
    python -m virtualenv env &&\
    source env/bin/activate &&\
    python -m pip install -U pip &&\
    python -m pip install -r requirements.txt

ENTRYPOINT [ "/algo-master/algo" ]




