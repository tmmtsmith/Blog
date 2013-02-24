Blog::Application.routes.draw do
  get "tags/index"

  get "tags/show"

	root :to => "articles#index"
	resources :articles
	resources :comments
	resources :tags
	resources :authors
end
