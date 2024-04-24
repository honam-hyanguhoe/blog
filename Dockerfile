FROM ruby:3.3.1

RUN gem install jekyll

WORKDIR /site
VOLUME /site

EXPOSE 4000
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
