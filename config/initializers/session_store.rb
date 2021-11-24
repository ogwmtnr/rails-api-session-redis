# frozen_string_literal: true

Rails.application.config.middleware.insert_before Rack::Head, ActionDispatch::Cookies
Rails.application.config.middleware.insert_after ActionDispatch::Cookies, ActionDispatch::Session::RedisStore,
  servers: ["redis://#{ENV.fetch("REDIS_HOST") { "localhost" }}:6379/0"],
  expire_after: 5.minutes,
  key: "_redis_sample_session"