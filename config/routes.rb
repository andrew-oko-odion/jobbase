Rails.application.routes.draw do

  resources :jobs 
  resources :dashboard

  root 'welcome#index'
  
  #get 'welcome/index'

  #get 'welcome/show'

  #get 'welcome/apply'
  mount MailyHerald::Webui::Engine => "/maily_webui"

  devise_for :employers
  devise_for :jobseekers
end
