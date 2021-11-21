Rails.application.routes.draw do
  resource :redis, only: [] do
    get "/session_set", to: "redis#session_set"
    get "/session_get", to: "redis#session_get"
  end
end
