Rails.application.routes.draw do
  get "/resume", to: 'resumes#show'
end
