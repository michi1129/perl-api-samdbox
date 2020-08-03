FROM perl:5.28

WORKDIR /src

RUN cpanm Task::Plack

ADD app.psgi /src

CMD [ "plackup", "app.psgi" ]

# -----

# docker build -t plack .

# docker run -it -p 5001:5000 plack
