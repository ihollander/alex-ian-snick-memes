Rails.application.routes.draw do
  resources :memes, except: :new
  resources :nineties_kids do
    resources :memes, only: [:new]
    get 'memes/new_from_giphy', to: 'memes#new_from_giphy', as: 'new_meme_from_giphy'
  end
  # resources :characters
  resources :shows
  post 'shows/search_api', to: 'shows#search_api', as: 'search_shows'
  post 'memes/search_giphy', to: 'memes#search_giphy', as: 'search_giphy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
