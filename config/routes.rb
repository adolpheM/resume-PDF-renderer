Rails.application.routes.draw do
  get "/resume-pdf/:id", to: 'resumes#show'
end
