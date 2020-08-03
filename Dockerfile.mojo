FROM perl:5.28

WORKDIR /src

RUN cpanm Mojolicious

ADD app.pl /src

CMD [ "morbo", "app.pl" ]

# -----

# docker build -t mojo .

# docker run -it -p 5001:5000 plack
