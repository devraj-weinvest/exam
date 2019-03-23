Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      sessions: 'auth_tokens/sessions'
    }
  resources :home, only: [], defaults: {format: :json} do
    collection do
      post :answer_question
      get :random_questions
      get :user_performance
    end
  end
end
