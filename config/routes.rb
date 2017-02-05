Rails.application.routes.draw do
  get 'dashboard/test'

  get 'jobcart/index'

  get 'jobcart/show'

  get 'jobcart/new'

  get 'jobcart/edit'

  resources :jobs 
  resources :dashboard

  root 'welcome#index'
  
  # get 'welcome/index'
  # get 'job-details' to: 'welcome#show', as: 'job2'
  # get 'welcome/apply'
  get 'dashboard/post'
  resources :welcome
  mount MailyHerald::Webui::Engine => "/maily_webui"
  
  devise_for :employers
  devise_for :jobseekers
end
