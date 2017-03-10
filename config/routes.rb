Rails.application.routes.draw do
  get "/resumePdf/:id", to: 'resumePdf#show'
end
