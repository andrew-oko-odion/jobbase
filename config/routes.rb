Rails.application.routes.draw do

  get 'application_history/index'
  get 'dashboard/welcome' => "dashboard#welcome"
  get 'welcome/internships' => "welcome#internship"
  post "welcome/:id/" => "welcome#create"

 #get "applications/:job_id/:jobseeker_id" => "applications#show"
 put "sort_candidates/:id" => "applications#update"
  resources :welcome do
    collection do
      get :autocomplete
    end
  end

  resources :application_history
  resources :jobs do
    get 'page/:page', action: :index, on: :collection
     collection do
      get :autocomplete
    end
  end
  
  resources :internships do
     get 'page/:page', action: :index, on: :collection
  end
  
  resources :educations
  resources :applications do
     collection do
      get :search
    end
  end

  resources :employer_notifications
  resources :forums
  resources :sort_candidates
  resources :work_experiences
  resources :payments
  resources :dashboard
  resources :jobcarts
  resources :email_settings
  resources :jobseeker_notifications
  
  # post 'applications/create'
  root 'welcome#index'
  
  
  #devise_for :jobseekers, controllers: {
  #             registrations: 'jobseekers/registrations', sessions: 'jobseekers/sessions'
  #           }

  devise_scope :jobseeker do 
    get 'user/profile' => 'jobseekers/registrations#index'
    get 'user' => 'jobseekers/registrations#index'
  end  
  devise_for :jobseekers, path: 'user', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }

  devise_for :employers, path: 'employer', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }

  # devise_for :employers, controllers: {
  #              sessions: 'employers/sessions'
  #            }

  get 'dashboard/post'

end
