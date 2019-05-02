Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, :contributions, :projects, :notes
    end
  end

  # namespace :api do
  #   namespace :v1 do
  #     resources :contributions, only: [:index, :update]
  #   end
  # end
  #
  # namespace :api do
  #   namespace :v1 do
  #     resources :notes, only: [:index, :update]
  #   end
  # end
  #
  # namespace :api do
  #   namespace :v1 do
  #     resources :projects, only: [:index, :update]
  #   end
  # end
end
