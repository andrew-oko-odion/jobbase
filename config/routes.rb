Rails.application.routes.draw do

  get 'dashboard/index'

  root 'welcome#index'
  
  #get 'welcome/index'

  #get 'welcome/show'

  #get 'welcome/apply'

  devise_for :employers
  devise_for :jobseekers
end
