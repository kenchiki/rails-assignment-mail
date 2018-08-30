Rails.application.routes.draw do
  resources :blogs do
    resources :entries, only: [:create, :destroy, :edit, :new, :show, :update] do
      resources :comments, only: [:create, :destroy] do
        member do
          put :approve
        end
      end
    end
  end
  root 'blogs#index'
end
