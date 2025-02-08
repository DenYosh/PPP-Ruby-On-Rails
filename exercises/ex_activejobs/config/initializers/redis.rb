$redis = Redis.new

Sidekiq.configure_server do |config|
  config.redis = { url: "redis://localhost:6379/0" }
end

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://localhost:6379/0" }
end

$redis = Redis.new(url: "redis://localhost:6379/0")

# sudo service redis-server stop
