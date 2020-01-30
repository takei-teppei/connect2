Rails.application.routes.draw do
  devise_for :users
  root 'resume#index'
  
  resources :users, only: [:index,:new,:create,:show] do
    collection do
      get 'done'
      get 'unedited'
    end
  end

  resources :resume ,only: [:index,:new,:create,:show] do 
    collection do
      get 'step1'
      post 'step1' =>'resume#validation'
      get 'step2'
      post 'step2' =>'resume#validation2'
      get 'step3'
      post 'step3' =>'resume#validation3'
      get 'step4' 
      post 'step4' =>'resume#validation4'
      get 'step5'
      post 'step5' =>'resume#validation5'
      get 'step6'
      post 'step6' =>'resume#validation6'
      get 'step7'
      post 'step7' =>'resume#validation7'
      get 'step8'
      post 'step8' =>'resume#validation8'
      get 'step9'
      post 'step9' =>'resume#validation9'
    end
  end
end
