Rails.application.routes.draw do
  root "pages#home"
  get "/bio", to: "pages#bio"
  get "/contact", to: "pages#contact"
end
