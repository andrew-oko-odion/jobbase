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
  
  
  resources :sort_candidates
  resources :work_experiences
  resources :payments
  resources :dashboard
  resources :jobcarts
  
  
  # post 'applications/create'
  root 'welcome#index'
  
  devise_scope :jobseeker do 
    get 'jobseekers/index' => 'jobseekers/registrations#index'
  end
  
  devise_for :jobseekers, controllers: {
               registrations: 'jobseekers/registrations', sessions: 'jobseekers/sessions'
             }
  
  devise_for :employers, controllers: {
               sessions: 'employers/sessions'
             }

  get 'dashboard/post'

end
