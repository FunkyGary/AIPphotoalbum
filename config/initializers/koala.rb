# In Rails, you could put this in config/initializers/koala.rb
Koala.configure do |config|
    config.access_token = User.last.fb_token
    config.app_access_token = User.last.fb_token
    config.app_id = 964561027050263
    config.app_secret = 730e32b5f73c529cf31318d78dd9dfd5
    # See Koala::Configuration for more options, including details on how to send requests through
    # your own proxy servers.
  end