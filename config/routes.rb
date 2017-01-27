Rails.application.routes.draw do
  devise_for :employers
  devise_for :jobseekers
  root 'application#home'
end
