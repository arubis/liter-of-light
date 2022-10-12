FROM ruby:3

WORKDIR /code
COPY . /code
RUN bundle install

EXPOSE 8080

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "8080"]
