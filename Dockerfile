# build state
FROM ruby:3.2.1 AS builder

# Thiết lập biến môi trường
ENV APP_HOME /myapp
ENV BUNDLE_PATH /gems

# Cài đặt các dependencies cần thiết
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  yarn \
  lsof

# Thiết lập thư mục làm việc và sao chép mã nguồn vào container
WORKDIR $APP_HOME
COPY . $APP_HOME
RUN gem install bundler && bundle install && bundle exec rails db:migrate && bundle exec rails db:seed
RUN bash -c "rm -f tmp/pids/server.pid"
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
