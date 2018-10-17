Rails.application.routes.draw do

	devise_for :users
	resources :users
	resources :cardlists do
		resources :cards
		patch 'cards/:id/check' => 'cards#update2' , as: 'update2'
	end

	root :to => 'users#show'
end
