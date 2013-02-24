Blog::Application.routes.draw do
  get "tags/index"

  get "tags/show"

	root :to => "articles#index"
	resources :articles
	resources :comments
	resources :tags
	resources :authors
	
	resources :author_sessions, only: [ :new, :create, :destroy ]

	match 'login'  => 'author_sessions#new'
	match 'logout' => 'author_sessions#destroy'
end
