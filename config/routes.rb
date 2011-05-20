Blog::Application.routes.draw do
  resources :posts do
	resources :comments
  end

  resources :contacts
  resources :resumes
  
  root :to => "home#index" #bring me home
  
end
