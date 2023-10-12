FROM ruby:3.1.0
LABEL org.opencontainers.image.source="https://github.com/augustasv/100daysofkubernetesjourney/sinatra"
WORKDIR /code
COPY . /code
RUN gem update --system --verbose
RUN bundle install

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
