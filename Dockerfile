FROM  radishgz/hue-docker:base
RUN pip install logilab-astng 

ADD . /hue
WORKDIR hue
RUN make -d apps
EXPOSE 8888
VOLUME /hue/desktop/
CMD ["build/env/bin/hue", "runserver_plus", "0.0.0.0:8888"]
