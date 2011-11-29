Bds::Application.routes.draw do
  devise_for :users

  root :to => 'home#index'
	
	namespace :admin do
		root :to => '#index'
		resources :articles
	end

end
