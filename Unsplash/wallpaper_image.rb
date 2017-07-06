require 'pry'
require 'unsplash'
include Unsplash

Unsplash.configure do |config|
  config.application_id     = ENV['APPLICATION_ID']
  config.application_secret = ENV['APPLICATION_SECRET']
end

me = User.find(ENV['USERNAME'])
daily_photo = me.photos.sample
photo_url = daily_photo.urls.raw

File.open('daily_image/image.jpg', 'wb') do |file|
  raw_image = Net::HTTP.get(URI(photo_url))
  file.write(raw_image)
end
