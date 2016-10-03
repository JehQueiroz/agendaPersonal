Rails.application.routes.draw do
  devise_for :useres
  devise_for :modeis
  resources :horarios
  resources :professores
  resources :academias
  resources :alunos do
  		collection do
  			get :listar
  		end
  end

  get 'paginas/index'

  get 'paginas/localizacao'

  root :to => 'paginas#index'
end
