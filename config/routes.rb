Rails.application.routes.draw do
  root "pages_controller#home"
  get "/bio", to: "pages_controller#bio"
  get "/contact", to: "pages_controller#contact"
end
