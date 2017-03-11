Rails.application.routes.draw do
  
  
#  get 'applications/index'

#  get 'applications/show'

#  get 'work_experiences/index'

# get 'work_experiences/show'

#  get 'work_experiences/edit'

# get 'work_experiences/new'

#  get 'educations/edit'

#  get 'educations/show'

#  get 'educations/new'

#  get 'educations/index'

#  get 'educations/edit'
#  get 'educations/delete'

  
  #get 'dashboard/test'

  get 'jobcart/index'

  get 'jobcart/show'

  get 'jobcart/new'

  get 'jobcart/edit'
  resources :welcome
  resources :educations
  resources :applications
  resources :work_experiences
  #resources :jobs 
  resources :dashboard

  post 'applications/create'

  root 'welcome#index'
  devise_for :jobseekers, controllers: {
               sessions: 'jobseekers/sessions'
               #registrations: 'jobseekers/sessions',
               #passwords: 'jobseekers/sessions'
             }
  
  devise_for :employers, controllers: {
        sessions: 'employers/sessions'
      }

  
  # get 'welcome/index'
  # get 'job-details' to: 'welcome#show', as: 'job2'
  # get 'welcome/apply'
  get 'dashboard/post'
  
  mount MailyHerald::Webui::Engine => "/maily_webui"
  
end
