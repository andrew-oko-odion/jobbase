Rails.application.routes.draw do
 
  get 'welcome/internships' => "welcome#internship"
  get 'jobcart/edit'
  post "welcome/:id/" => "welcome#create"
  get "applications/:job/:candidate" => "applications#show"
  resources :welcome
  resources :educations
  resources :applications
  resources :work_experiences
  resources :payments
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
