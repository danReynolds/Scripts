FROM ruby:2.3.0

RUN ["gem", "install", "unsplash", "pry"]

RUN mkdir /app
WORKDIR /app
ADD wallpaper_image.rb /app/wallpaper_image.rb

CMD ["ruby", "wallpaper_image.rb"]
